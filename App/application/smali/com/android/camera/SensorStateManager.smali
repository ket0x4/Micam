.class public Lcom/android/camera/SensorStateManager;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorStateManager$MainHandler;,
        Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;,
        Lcom/android/camera/SensorStateManager$SensorStateListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_POSTURE_DEGREE:I

.field private static final GYROSCOPE_MOVING_THRESHOLD:D

.field private static final GYROSCOPE_STABLE_THRESHOLD:D


# instance fields
.field private lastGravityValue:[F

.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleSpeed:[D

.field private mAngleSpeedIndex:I

.field private mAngleTotal:D

.field private mCapturePosture:I

.field private mDeviceStable:Z

.field private mEdgeTouchEnabled:Z

.field private mFocusSensorEnabled:Z

.field private mGradienterEnabled:Z

.field private mGravityListener:Landroid/hardware/SensorEventListener;

.field private final mGravitySensor:Landroid/hardware/Sensor;

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mGyroscopeTimeStamp:J

.field private mHandler:Landroid/os/Handler;

.field private mIsLying:Z

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mLinearAccelerometer:Landroid/hardware/Sensor;

.field private mOrientation:F

.field private final mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mRate:I

.field private mRotationFlagEnabled:Z

.field private mSensorListenerThread:Landroid/os/HandlerThread;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegister:I

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "camera_stable_threshold"

    const/16 v1, 0x9

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    sput-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    const-string v0, "camera_moving_threshold"

    const/16 v2, 0xf

    .line 32
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    const-string v0, "capture_degree"

    const/16 v1, 0x2d

    .line 47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 50
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 54
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 65
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    const/4 v1, 0x5

    new-array v1, v1, [D

    .line 67
    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v1, v0

    const/4 v0, 0x1

    aput-wide v2, v1, v0

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    const/4 v5, 0x4

    aput-wide v2, v1, v5

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    .line 73
    iput-wide v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    .line 343
    new-instance v1, Lcom/android/camera/SensorStateManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SensorStateManager$1;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 384
    new-instance v1, Lcom/android/camera/SensorStateManager$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SensorStateManager$2;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mGravityListener:Landroid/hardware/SensorEventListener;

    .line 419
    new-instance v1, Lcom/android/camera/SensorStateManager$3;

    invoke-direct {v1, p0}, Lcom/android/camera/SensorStateManager$3;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 491
    new-instance v1, Lcom/android/camera/SensorStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/camera/SensorStateManager$4;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 97
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 98
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 99
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 100
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mGravitySensor:Landroid/hardware/Sensor;

    .line 101
    new-instance p1, Lcom/android/camera/SensorStateManager$MainHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/camera/SensorStateManager$MainHandler;-><init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x7530

    .line 103
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    new-instance p1, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;

    invoke-direct {p1, p0}, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 108
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SensorListenerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    .line 109
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SensorStateManager;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/SensorStateManager;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/camera/SensorStateManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 18
    sget v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/SensorStateManager;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/SensorStateManager;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p0
.end method

.method static synthetic access$1302(Lcom/android/camera/SensorStateManager;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/SensorStateManager;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->useGravityMoveDetectionInstead()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/SensorStateManager;[F)[F
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->calcLinearAccEventValues([F)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/camera/SensorStateManager;F)F
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBecomeStable()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/SensorStateManager;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    return-void
.end method

.method static synthetic access$200()D
    .locals 2

    .line 18
    sget-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBeginMoving()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/SensorStateManager;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/SensorStateManager;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/camera/SensorStateManager;)I
    .locals 1

    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SensorStateManager;)[D
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/SensorStateManager;)D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/SensorStateManager;D)D
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic access$618(Lcom/android/camera/SensorStateManager;D)D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/SensorStateManager;D)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/SensorStateManager;)[F
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->lastGravityValue:[F

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/camera/SensorStateManager;[F)[F
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->lastGravityValue:[F

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/SensorStateManager;J[F)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/SensorStateManager;->onLinearAccelerationSensorChanged(J[F)V

    return-void
.end method

.method private calcLinearAccEventValues([F)[F
    .locals 4

    .line 482
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    .line 483
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->lastGravityValue:[F

    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 485
    aget v3, v0, v1

    aget v2, v2, v1

    sub-float/2addr v3, v2

    aput v3, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private changeCapturePosture(I)V
    .locals 1

    .line 633
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    if-eq v0, p1, :cond_0

    .line 634
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 635
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    if-eqz p0, :cond_0

    .line 636
    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->notifyDevicePostureChanged()V

    :cond_0
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBecomeStable()V

    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBeginMoving()V

    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 611
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method private filterUnregisterSensor(I)I
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x3

    and-int/lit8 p1, p1, -0x5

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, -0x5

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->useGravityMoveDetectionInstead()Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, -0x9

    and-int/lit8 p1, p1, -0x11

    .line 176
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz p0, :cond_4

    and-int/lit8 p0, p1, -0x9

    and-int/lit8 p1, p0, -0x5

    :cond_4
    return p1
.end method

.method private isContains(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPartialContains(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private normalizeDegree(F)F
    .locals 1

    :goto_0
    const/high16 p0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    sub-float/2addr p1, p0

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, p0

    goto :goto_1

    :cond_1
    return p1
.end method

.method private onLinearAccelerationSensorChanged(J[F)V
    .locals 6

    .line 398
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 399
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    if-eqz v2, :cond_4

    .line 400
    invoke-interface {v2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/32 v2, 0x5f5e100

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 409
    aget v1, p3, v0

    aget v0, p3, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p3, v0

    aget v0, p3, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x2

    aget v2, p3, v0

    aget p3, p3, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 412
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    const-wide p1, 0x3fecccccc0000000L    # 0.8999999761581421

    cmpl-double p1, v0, p1

    if-lez p1, :cond_2

    .line 415
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    :cond_2
    return-void

    .line 405
    :cond_3
    :goto_0
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    :cond_4
    :goto_1
    return-void
.end method

.method private update(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 199
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 201
    iget p2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, p2, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->register(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private useGravityMoveDetectionInstead()Z
    .locals 0

    .line 159
    invoke-static {}, Lcom/android/camera/Device;->supportUseGravityMoveDetection()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCapturePosture()I
    .locals 0

    .line 589
    iget p0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    return p0
.end method

.method public isDeviceLying()Z
    .locals 0

    .line 584
    iget-boolean p0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public register()V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x4

    .line 214
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x4

    .line 217
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 220
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->register(I)V

    return-void
.end method

.method public register(I)V
    .locals 8

    .line 224
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const/16 v0, 0xc

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 235
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    .line 236
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->useGravityMoveDetectionInstead()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    goto :goto_0

    :cond_2
    or-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v3

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 245
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 247
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 249
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 251
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v2, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 253
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v7, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 255
    iget v2, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 258
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v6, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 262
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_7
    const/16 v0, 0x10

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 266
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGravityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 267
    iget p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    nop

    :cond_8
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    .line 320
    iput-wide v2, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    .line 321
    iput-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    return-void
.end method

.method public setEdgeTouchEnabled(Z)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eq v0, p1, :cond_2

    .line 184
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    const/4 p1, 0x6

    .line 186
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v0, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, -0x3

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_2
    return-void
.end method

.method public setFocusSensorEnabled(Z)V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eq v0, p1, :cond_2

    .line 118
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    .line 119
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->useGravityMoveDetectionInstead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 126
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v2, :cond_1

    .line 127
    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result v0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 129
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 137
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    const/16 p1, 0xc

    .line 139
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result p1

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setRotationIndicatorEnabled(Z)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eq v0, p1, :cond_1

    .line 149
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    const/4 p1, 0x4

    .line 151
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result p1

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public unregister(I)V
    .locals 2

    .line 273
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    if-eqz v0, :cond_7

    .line 274
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_2

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x1

    .line 278
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x2

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 283
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 287
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_3
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 291
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_4
    const/4 v0, 0x4

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 295
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 297
    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    :cond_5
    const/16 v0, 0x8

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 301
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_6
    const/16 v0, 0x10

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 304
    iget-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mGravityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 305
    iget p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_7
    return-void
.end method
