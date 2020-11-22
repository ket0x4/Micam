.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$HardwareErrorListener;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraState:I

.field private mFlashOn:Z

.field private mFocusSuccessful:Z

.field private mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

.field private volatile mHoldException:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewEnable:Z

.field private mReconnectException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;

.field private mWBCT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 149
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraManager;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/CameraManager;->mWBCT:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraManager;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/CameraManager;->mWBCT:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/CameraManager;->mPreviewEnable:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mPreviewEnable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraManager;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraManager;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/CameraManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/CameraManager;->mFlashOn:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mFlashOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/CameraManager;->mFocusSuccessful:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mFocusSuccessful:Z

    return p1
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .line 130
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method public getStashParameters()Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method public holdException(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return-void
.end method

.method public openCamera(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .line 167
    monitor-enter p0

    const/4 v0, 0x0

    .line 168
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    .line 169
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 170
    iget-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 p1, 0x1

    .line 172
    iput p1, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    .line 173
    iget-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-exit p0

    return-object p1

    .line 175
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setStashParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method
