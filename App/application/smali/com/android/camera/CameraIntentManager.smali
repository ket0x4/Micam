.class public Lcom/android/camera/CameraIntentManager;
.super Ljava/lang/Object;
.source "CameraIntentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraIntentManager"

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Intent;",
            "Lcom/android/camera/CameraIntentManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mActionPerformed:Z

.field private mIntent:Landroid/content/Intent;

.field private mReferer:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method private getCaller()Ljava/lang/String;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    .line 554
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCameraFacingIntentExtras(Landroid/content/Intent;I)I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "android.intent.extras.CAMERA_FACING"

    .line 598
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 600
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isPortraitIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isFrontCameraIntent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 602
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result p0

    if-eq p0, v0, :cond_5

    :goto_0
    move p1, p0

    goto :goto_1

    .line 607
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p0

    if-eq p0, v0, :cond_5

    goto :goto_0

    .line 612
    :cond_1
    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isFrontCameraIntent(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 614
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isForceAuxFrontIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 615
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getAuxFrontCameraId()I

    move-result p0

    if-eq p0, v0, :cond_5

    goto :goto_0

    .line 620
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result p0

    if-eq p0, v0, :cond_5

    goto :goto_0

    .line 625
    :cond_3
    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isBackCameraIntent(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isForceAuxBackIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 627
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result p0

    if-eq p0, v0, :cond_5

    goto :goto_0

    :cond_4
    move p1, v1

    :cond_5
    :goto_1
    return p1
.end method

.method public static getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;
    .locals 2

    .line 223
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraIntentManager;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/camera/CameraIntentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraIntentManager;-><init>(Landroid/content/Intent;)V

    .line 226
    sget-object v1, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 2

    .line 260
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    if-eqz p0, :cond_2

    if-ltz p0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result v1

    if-eq p0, v1, :cond_2

    .line 263
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->hasMuxCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMuxCameraId()I

    move-result v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isForceAuxBackIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extras.EXTRAS_CAMERA_VICE_BACK"

    .line 651
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isForceAuxFrontIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extras.EXTRAS_CAMERA_VICE_FRONT"

    .line 658
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isFromVoice(Landroid/app/Activity;)Z
    .locals 3

    .line 498
    invoke-static {}, Lcom/android/camera/KeyKeeper;->getInstance()Lcom/android/camera/KeyKeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/KeyKeeper;->getAssistantHash()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.camera.ASSISTANT_HASH"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string p1, "com.android.camera.FROM_VOICE_ROOT"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPortraitIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 640
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.intent.extras.PORTRAIT"

    .line 644
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private parseReferer(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "android.intent.extra.REFERRER"

    .line 529
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 533
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 535
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 538
    :catch_0
    sget-object p1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public static removeAllInstance()V
    .locals 1

    .line 240
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public static removeInstance(Landroid/content/Intent;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkCallerLegality()Z
    .locals 6

    .line 561
    invoke-direct {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object p0

    .line 562
    sget-object v0, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 567
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.miui.home"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.miui.voiceassist"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "com.xiaomi.voiceassistant"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 574
    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCallerLegality: Unknown caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74b9fdea -> :sswitch_3
        0x348502d2 -> :sswitch_2
        0x5b883f2a -> :sswitch_1
        0x7ce26eb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkIntentLocationPermission(Landroid/app/Activity;)Z
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 284
    sget-object p1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent calling package is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    return v0

    .line 288
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 289
    invoke-virtual {p1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public destroy()V
    .locals 2

    .line 244
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method public getCameraFacing()I
    .locals 1

    .line 591
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/camera/CameraIntentManager;->getCameraFacingIntentExtras(Landroid/content/Intent;I)I

    move-result p0

    return p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "UNSPECIFIED"

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "VIDEO"

    return-object p0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CAPTURE"

    return-object p0

    :cond_1
    return-object v2

    .line 412
    :cond_2
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v2
.end method

.method public getCameraModeId()I
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "MANUAL_MODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "PANORAMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "PANORAMIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "PORTRAIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "CAPTURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "FAST_MOTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "SHORT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "SLOW_MOTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_9
    const-string v0, "SQUARE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "MANUAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xa0

    return p0

    :pswitch_0
    const/16 p0, 0xa8

    return p0

    :pswitch_1
    const/16 p0, 0xa9

    return p0

    :pswitch_2
    const/16 p0, 0xa2

    return p0

    :pswitch_3
    const/16 p0, 0xa1

    return p0

    :pswitch_4
    const/16 p0, 0xa5

    return p0

    :pswitch_5
    const/16 p0, 0xab

    return p0

    :pswitch_6
    const/16 p0, 0xa6

    return p0

    :pswitch_7
    const/16 p0, 0xa7

    return p0

    :pswitch_8
    const/16 p0, 0xa3

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78e2243a -> :sswitch_a
        -0x6dc0b2e3 -> :sswitch_9
        0x3edbbb4 -> :sswitch_8
        0x49256b8 -> :sswitch_7
        0x4de1c5b -> :sswitch_6
        0xe9700f9 -> :sswitch_5
        0x4bbb5326 -> :sswitch_4
        0x5a1dab9b -> :sswitch_3
        0x5f263966 -> :sswitch_2
        0x6e6c9675 -> :sswitch_1
        0x6f917a7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtraCropValue()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "crop"

    .line 312
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraSavedUri()Landroid/net/Uri;
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "output"

    .line 304
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraShouldSaveCapture()Ljava/lang/Boolean;
    .locals 2

    .line 343
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "save-image"

    .line 345
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 347
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getTimerDurationSeconds()I
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getVideoDurationTime()I
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EXTRA_DURATION_LIMIT has not been defined"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVideoQuality()I
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 327
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EXTRA_VIDEO_QUALITY has not been defined"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVoiceControlAction()Ljava/lang/String;
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extras.VOICE_CONTROL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "NONE"

    if-nez v0, :cond_0

    return-object v2

    .line 583
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    return-object p0
.end method

.method public isActionPerformed()Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return p0
.end method

.method public isFromVolumeKey()Ljava/lang/Boolean;
    .locals 1

    .line 359
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "power_double_tap"

    .line 361
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .line 267
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOpenOnly(Landroid/app/Activity;)Z
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.googlequicksearchbox"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_0
    const-string v2, "android.intent.action.MAIN"

    .line 462
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 466
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    invoke-direct {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_1

    :cond_2
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 477
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 479
    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->isFromVoice(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_6

    return v4

    .line 484
    :cond_4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 488
    :cond_5
    iget-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 490
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.camera.VoiceCamera"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 494
    :cond_6
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string p1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v4
.end method

.method public isQuickCapture()Ljava/lang/Boolean;
    .locals 2

    .line 354
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.quickCapture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isQuickLaunch()Z
    .locals 4

    .line 368
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 371
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "lockscreen_affordance"

    .line 375
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "power_double_tap"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "ShowCameraWhenLocked"

    .line 383
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    return v1
.end method

.method public isScanQRCodeIntent()Z
    .locals 1

    .line 296
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.camera.action.QR_CODE_CAPTURE"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.zxing.client.android.SCAN"

    .line 298
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isUseFrontCamera()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 397
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "USE_FRONT_CAMERA extras has not been defined!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVideoCaptureIntent()Z
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public markPerformed()V
    .locals 1

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method public setReferer(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 546
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    :cond_0
    return-void
.end method
