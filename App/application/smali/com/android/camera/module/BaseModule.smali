.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;
.implements Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$CameraMode;
    }
.end annotation


# static fields
.field protected static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraDisplayOrientation:I

.field protected mCameraHardwareError:Z

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentZoomRatio:I

.field protected mDeviceRotation:F

.field protected mDisplayRect:Landroid/graphics/Rect;

.field protected mDisplayRotation:I

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field protected mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field private mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mModuleIndex:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mObjectTrackingStarted:Z

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mRestoring:Z

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSwitchingCamera:Z

.field protected mTriggerMode:I

.field protected mUIStyle:I

.field protected mWaitForRelease:Z

.field mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

.field protected mZoomMax:I

.field protected mZoomMaxRatio:I

.field private mZoomScaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 90
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 91
    iput v2, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    const/16 v1, 0xa

    .line 208
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    .line 212
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCurrentZoomRatio:I

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 225
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    return-void
.end method

.method protected static get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1356
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static getJpegQuality(Z)I
    .locals 0

    .line 1291
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object p0

    .line 1292
    invoke-static {p0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I
    .locals 0

    .line 796
    iget p1, p1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getTapableRectWithEdgeSlop()Landroid/graphics/Rect;
    .locals 5

    .line 833
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 834
    invoke-static {p0}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 835
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 839
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_2

    .line 840
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sub-int/2addr v1, v2

    .line 841
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x3f400000    # 0.75f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 845
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 847
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 856
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 852
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sget v3, Lcom/android/camera/Util;->sNavigationBarHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 860
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Util;->calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I

    move-result p0

    const/4 v1, -0x1

    const-string v2, "camera_touch_edge_slop"

    .line 861
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p0, v2

    .line 866
    invoke-static {p0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p0

    .line 868
    :goto_1
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-object v0
.end method

.method private isCaptureMode()Z
    .locals 0

    .line 615
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

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

.method public static isModulePanoramaShooting(Lcom/android/camera/module/Module;)Z
    .locals 1

    .line 1277
    instance-of v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;

    if-eqz v0, :cond_0

    .line 1278
    check-cast p0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isShooting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isModuleRecording(Lcom/android/camera/module/Module;)Z
    .locals 1

    .line 1269
    instance-of v0, p0, Lcom/android/camera/module/VideoBase;

    if-eqz v0, :cond_0

    .line 1270
    check-cast p0, Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 800
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setIgnoreTouchEvent(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return-void
.end method


# virtual methods
.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string p0, "camera-service-mute"

    const-string v0, "true"

    .line 769
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addT2TParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 773
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "t2t"

    const-string v0, "on"

    .line 774
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected addZoom(I)Z
    .locals 3

    .line 686
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 690
    :cond_0
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method protected apply3DBeautyParam(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2

    .line 1360
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v0, "4"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1362
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const/4 v0, 0x0

    const-string v1, "pref_beautify_slim_face_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1364
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_enlarge_eye_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1366
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_nose_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyNose(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1368
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_risorius_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyRisorius(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1370
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_lips_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyLips(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1372
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_chin_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyChin(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1374
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_neck_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyNeck(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1376
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_smile_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySmile(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1378
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_slim_nose_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySilmNose(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1380
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_eyebrow_dye_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEyebrowDye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1382
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_jelly_lips_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyJellyLips(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1384
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_pupil_line_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyPupilLine(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1386
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v1, "pref_beautify_blusher_ratio_key"

    invoke-static {p2, v1, v0}, Lcom/android/camera/module/BaseModule;->get3DBeautyValue(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyBlusher(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public checkActivityOrientation()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 552
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    .line 561
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    return-void
.end method

.method protected clearFaceBeautyAdvParams()V
    .locals 3

    .line 1421
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1422
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1423
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1424
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method protected configOisParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 779
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setOIS(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .line 383
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public enableCameraControls(Z)V
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraControls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 703
    invoke-direct {p0, p1}, Lcom/android/camera/module/BaseModule;->setIgnoreTouchEvent(Z)V

    return-void
.end method

.method public enableFakeThumbnail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected enterMutexMode()V
    .locals 0

    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method public getModuleIndex()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    return p0
.end method

.method public getMutexModePicker()Lcom/android/camera/MutexModeManager;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object p0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method protected getPictureInfo()Lcom/android/camera/PictureInfo;
    .locals 2

    .line 1285
    new-instance v0, Lcom/android/camera/PictureInfo;

    invoke-direct {v0}, Lcom/android/camera/PictureInfo;-><init>()V

    .line 1286
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setSensorType(I)V

    .line 1287
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/PictureInfo;->setMirror(Z)V

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method protected getScreenDelay()I
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0xea60

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x7530

    :goto_1
    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 602
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method protected getTriggerMode()I
    .locals 0

    .line 1260
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    return p0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public getZoomMax()I
    .locals 0

    .line 927
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    return p0
.end method

.method public getZoomMaxRatio()I
    .locals 0

    .line 931
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mZoomMaxRatio:I

    return p0
.end method

.method protected getZoomValue()I
    .locals 0

    .line 923
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result p0

    return p0
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v2, 0x7f0f0418

    .line 626
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_volumekey_function_key"

    .line 624
    invoke-virtual {v0, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v2, 0x7f0f0374

    .line 630
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_volumekey_function_key"

    .line 628
    invoke-virtual {v0, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f037a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f0f037b

    .line 633
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 636
    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f037d

    .line 637
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 639
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isCaptureMode()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 645
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->addZoom(I)Z

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->addZoom(I)Z

    move-result p0

    :goto_1
    if-nez p3, :cond_5

    if-eqz p0, :cond_5

    const-string p0, "\u97f3\u91cf\u952e"

    .line 650
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->trackZoomAdjusted(Ljava/lang/String;)V

    :cond_5
    return v1

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 634
    :cond_7
    :goto_2
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(Ljava/lang/String;IZ)V

    :cond_8
    :goto_3
    return v1
.end method

.method protected hasCameraException()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

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

.method protected hideTipMessage(I)V
    .locals 1

    .line 1100
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_1

    if-lez p1, :cond_0

    .line 1101
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1102
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getMaxExposureCompensation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 681
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getMinExposureCompensation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 682
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getExposureCompensationStep(Landroid/hardware/Camera$Parameters;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    return-void
.end method

.method protected initializeMutexMode()V
    .locals 6

    .line 713
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v0, :cond_0

    return-void

    .line 716
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 718
    new-instance v1, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 725
    new-instance v2, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 732
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "enter"

    .line 733
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exit"

    .line 734
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 735
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 736
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 737
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 738
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 739
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    .line 740
    invoke-static {v2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v2, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 750
    new-instance v3, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 757
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 758
    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 760
    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v1, Lcom/android/camera/MutexModeManager;

    invoke-direct {v1, v0}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-void
.end method

.method protected initializeZoom()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 663
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 667
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMaxRatio:I

    .line 669
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setOrientation(IZ)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isBackCamera()Z
    .locals 1

    .line 808
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCaptureIntent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreated()Z
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isDeparted()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected isFrontCamera()Z
    .locals 1

    .line 804
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnoreTouchEvent()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return p0
.end method

.method public isInTapableRect(II)Z
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->getTapableRectWithEdgeSlop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isKeptBitmapTexture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    .line 935
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isRestoring()Z
    .locals 0

    .line 1050
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSquareModeChange()Z
    .locals 4

    .line 1084
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 1085
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderTargetRatio()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public isSupportFocusShoot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isThermalThreshold()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isZoomEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 3

    .line 821
    instance-of v0, p1, Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 822
    check-cast p1, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 823
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 824
    :cond_0
    instance-of v0, p1, Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 825
    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 826
    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 827
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, p0

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 828
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyError(I)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraError()V

    :cond_0
    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p0, "BaseModule"

    const-string p1, "notifyError camera evicted"

    .line 948
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 955
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 956
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_0

    .line 958
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 1337
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "SD card available"

    .line 1338
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 1340
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1341
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SD card unavailable"

    .line 1342
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-static {}, Lcom/android/camera/FileCompat;->updateSDPath()V

    .line 1344
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1345
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 1346
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "media scanner started"

    .line 1347
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 1348
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1349
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    const-string p0, "media scanner finisheded"

    .line 1350
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCameraException()V
    .locals 6

    .line 462
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    const v1, 0x7f0f0078

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    if-eqz v0, :cond_5

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1040014

    goto :goto_0

    :cond_2
    move v0, v1

    .line 467
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->isInVideoCall(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0f0087

    goto :goto_1

    .line 469
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const v2, 0x7f0f0086

    goto :goto_1

    :cond_4
    const v2, 0x7f0f0085

    .line 472
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3, v0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;II)V

    .line 473
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    .line 477
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0f0077

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;II)V

    .line 481
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_2

    .line 484
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(II)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate moduleIndex->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 232
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->setCameraId(I)V

    .line 234
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 235
    new-instance p1, Lcom/android/camera/CameraErrorCallback;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p1, p2}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 237
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa6

    .line 238
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 240
    new-instance p1, Lcom/android/camera/voiceassist/XiaoAiHelper;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/voiceassist/XiaoAiHelper;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 243
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "BaseModule"

    const-string v0, "onDestroy"

    .line 263
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvChanged(II)V
    .locals 3

    .line 298
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 302
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 305
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    if-ne p2, v2, :cond_2

    .line 307
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeExposure(I)V

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    :cond_2
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 388
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x52

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(II)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 533
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 534
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 535
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 534
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 536
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 540
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 541
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "device orientation change to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseModule"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BaseModule"

    const-string v1, "onPause"

    .line 361
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return-void
.end method

.method public onPortraitZoomChanged()V
    .locals 0

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 0

    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "BaseModule"

    const-string v1, "onResume"

    .line 354
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1042
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p0

    const-string v0, "killed-moduleIndex"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 0

    .line 421
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 423
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 424
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(FF)Z
    .locals 0

    const/4 p1, 0x1

    .line 415
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd()V
    .locals 0

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0

    return-void
.end method

.method public onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .line 517
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSmartShutterButton()Lcom/android/camera/ui/V9SmartShutterButton;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/camera/ui/V9SmartShutterButton;->flyin(IIII)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 368
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    :cond_0
    return-void
.end method

.method public onZoomRatioChanged(IZ)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/Util;->binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onZoomSwitchCamera()V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->disableSwitchAnimationOnce()V

    .line 338
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onCameraPickerClicked(I)Z

    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(IZ)V

    return-void
.end method

.method public onZoomValueChanged(IZ)V
    .locals 3

    .line 878
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 881
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 882
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 884
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-lez p1, :cond_2

    .line 887
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "optical-zoom-to-tele"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCurrentZoomRatio:I

    .line 895
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateSuperResolution()V

    if-eqz p2, :cond_4

    .line 897
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 899
    :cond_4
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 903
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xb6

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p2, :cond_5

    .line 904
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$DualController;->updateZoomValue()V

    goto :goto_2

    :cond_5
    const/4 p2, 0x2

    .line 907
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    .line 910
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "zoom="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method protected openSettingActivity()V
    .locals 0

    return-void
.end method

.method protected performVolumeKeyClicked(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 790
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    :cond_1
    return-void
.end method

.method public portraitZoomSwitching()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public preTransferOrientation(II)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 594
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    return-void
.end method

.method public prepareOpenCamera(II)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    const-string v0, "BaseModule"

    const-string v1, "registerProtocol"

    .line 276
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 278
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 279
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 280
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected abstract removeHandlerMessages()V
.end method

.method public requestRender()V
    .locals 0

    return-void
.end method

.method public resetEvValue()V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 318
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 321
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 783
    sget-object p0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public resetMutexModeManually()V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    return-void
.end method

.method protected restoreBottom()V
    .locals 2

    .line 1128
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 1129
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 1130
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1131
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const v0, 0x7f090019

    .line 1132
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xf1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    .line 1134
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 3

    .line 447
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 448
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr p1, v0

    const/4 v2, 0x0

    if-gez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    return v2

    .line 457
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    return-void
.end method

.method public setActivity(Lcom/android/camera/Camera;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    return-void
.end method

.method public setDeparted()V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setDisplayRectAndUIStyle(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    .line 1301
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void
.end method

.method protected setFaceBeautyAdvParams()V
    .locals 6

    .line 1390
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const-string v5, "pref_beautify_skin_color_ratio_key"

    .line 1391
    invoke-static {v5, v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1390
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1393
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pref_beautify_slim_face_ratio_key"

    .line 1394
    invoke-static {v5, v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1396
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pref_beautify_skin_smooth_ratio_key"

    .line 1397
    invoke-static {v5, v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1396
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1399
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pref_beautify_enlarge_eye_ratio_key"

    .line 1400
    invoke-static {v2, v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1399
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public setHandlerFinishEmitter(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->removeHandlerMessages()V

    :goto_0
    return-void
.end method

.method protected setLeagcyFaceBeautyAdvParams()V
    .locals 10

    .line 1405
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v0

    .line 1406
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v0, v7

    const-string v9, "pref_beautify_skin_color_ratio_key"

    .line 1407
    invoke-static {v9, v6, v8}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1406
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1409
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v5

    aget v8, v0, v7

    const-string v9, "pref_beautify_slim_face_ratio_key"

    .line 1410
    invoke-static {v9, v6, v8}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1409
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1412
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v5

    aget v8, v0, v7

    const-string v9, "pref_beautify_skin_smooth_ratio_key"

    .line 1413
    invoke-static {v9, v6, v8}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1412
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1415
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v5

    aget v0, v0, v7

    const-string v4, "pref_beautify_enlarge_eye_ratio_key"

    .line 1416
    invoke-static {v4, v3, v0}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-virtual {v1, p0, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public setModuleIndex(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method setPreviewTexture()V
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "BaseModule"

    if-eqz v0, :cond_2

    .line 1307
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1309
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportStartupOptimize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->preCreateSurfaceTexture()V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "setPreviewTexture"

    .line 1320
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    const-string p0, "setPreviewTexture failed for surface is null"

    .line 1323
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "setPreviewTexture failed for activity is null or paused"

    .line 1326
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected setTriggerMode(I)V
    .locals 0

    .line 1264
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    return-void
.end method

.method protected setZoomValue(I)V
    .locals 0

    .line 919
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeZoom(I)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected trackGeneralInfo(IZ)V
    .locals 8

    .line 1144
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 1145
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 1146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1147
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 1148
    invoke-static {v3}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6a21\u5f0f"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "on"

    const-string v5, "off"

    if-nez p2, :cond_0

    .line 1150
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-string v7, "\u5408\u5f71\u4f18\u9009"

    .line 1149
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/CameraStatUtil;->triggerModeToName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u89e6\u53d1\u65b9\u5f0f"

    .line 1151
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string v6, "0"

    goto :goto_1

    .line 1155
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const-string v7, "\u5012\u8ba1\u65f6"

    .line 1153
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1160
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3

    const-string v6, "torch"

    .line 1161
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move-object v1, v5

    :cond_3
    const-string v6, "\u95ea\u5149\u706f"

    .line 1165
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    if-eqz p2, :cond_4

    const-string v1, "none"

    goto :goto_2

    .line 1169
    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v6, "\u6ee4\u955c"

    .line 1168
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    const-string v6, "capture"

    if-eqz v1, :cond_7

    .line 1172
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p0, v4

    goto :goto_3

    :cond_5
    move-object p0, v5

    :goto_3
    const-string p2, "\u5e74\u9f84\u68c0\u6d4b"

    .line 1171
    invoke-interface {v2, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v5

    :goto_4
    const-string p0, "\u9b54\u955c"

    .line 1173
    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    const-string p2, "front_camera_info"

    .line 1175
    invoke-static {v6, p2, p0, p1, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_9

    :cond_7
    if-nez p2, :cond_8

    .line 1179
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1180
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 1181
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v5

    :goto_5
    const-string v1, "\u79fb\u8f74"

    .line 1178
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_9

    .line 1183
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v4

    goto :goto_6

    :cond_9
    move-object v0, v5

    :goto_6
    const-string v1, "\u6c34\u5e73\u4eea"

    .line 1182
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_a

    .line 1186
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v4

    goto :goto_7

    :cond_a
    move-object v0, v5

    :goto_7
    const-string v1, "HHT"

    .line 1185
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_b

    .line 1189
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_8

    :cond_b
    move-object v4, v5

    :goto_8
    const-string p2, "HDR"

    .line 1188
    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 1192
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->getDualZoomName(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\u53d8\u7126"

    .line 1191
    invoke-interface {v2, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    const-string p2, "back_camera_info"

    .line 1193
    invoke-static {v6, p2, p0, p1, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :goto_9
    return-void
.end method

.method public trackGotoGallery()V
    .locals 2

    .line 1245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1246
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 1247
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6a21\u5f0f"

    .line 1246
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "goto_gallery"

    .line 1248
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackGotoSettings()V
    .locals 2

    .line 1238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1239
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 1240
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6a21\u5f0f"

    .line 1239
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "goto_settings"

    .line 1241
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected trackModeCustomInfo(I)V
    .locals 0

    return-void
.end method

.method protected trackPictureTaken(IZZ)V
    .locals 5

    .line 1199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1200
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 1201
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa5

    if-ne v2, v1, :cond_1

    const-string v1, "1x1"

    goto :goto_1

    :cond_1
    const-string v1, "4x3"

    .line 1205
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "\u753b\u5e45"

    .line 1204
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u753b\u8d28"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    const-string v4, "\u65f6\u95f4\u6c34\u5370"

    .line 1207
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    const-string v1, "\u53cc\u6444\u6c34\u5370"

    .line 1209
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    const-string p3, "\u6709"

    goto :goto_4

    .line 1213
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "\u65e0"

    goto :goto_4

    :cond_5
    const-string p3, "\u5173"

    :goto_4
    const-string v1, "\u5730\u7406\u4f4d\u7f6e"

    .line 1211
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v1, p1

    const-string p3, "capture"

    const-string v3, "picture_taken"

    .line 1215
    invoke-static {p3, v3, v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    if-eqz p2, :cond_7

    .line 1219
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    if-le p1, p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 1222
    :cond_6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1223
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->burstShotNumToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f20\u6570"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, p1

    const-string v2, "picture_taken_burst"

    .line 1224
    invoke-static {p3, v2, v0, v1, p2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const-string v0, "burst_shot_times"

    .line 1226
    invoke-static {p3, v0, p2}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1230
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->trackModeCustomInfo(I)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string v0, "BaseModule"

    const-string v1, "unRegisterProtocol"

    .line 286
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 288
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 289
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 290
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateAIASDPreference()V
    .locals 0

    return-void
.end method

.method public updateBokehPreference()V
    .locals 0

    return-void
.end method

.method protected updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V
    .locals 3

    .line 1054
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 1061
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSquareModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SurfaceTextureScreenNail;->setSize(II)V

    .line 1064
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 1065
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v1

    .line 1064
    invoke-virtual {p3, v0, v1}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    :cond_2
    const/4 p3, 0x3

    .line 1068
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 1069
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setPreviewSize(II)V

    :cond_3
    return-void
.end method

.method public updateFlashPreference()V
    .locals 0

    return-void
.end method

.method public updateHDRPreference()V
    .locals 0

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 1

    .line 914
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 915
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(I)V

    return-void
.end method

.method public updateSuperResolution()V
    .locals 0

    return-void
.end method

.method protected updateTipMessage(III)V
    .locals 1

    .line 1092
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    .line 1094
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :cond_0
    return-void
.end method
