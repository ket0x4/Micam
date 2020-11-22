.class public Lcom/android/camera/effect/renders/SnapshotEffectRender;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final TAG:Ljava/lang/String; = "SnapshotEffectRender"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mDualCameraWaterMark:Landroid/graphics/Bitmap;

.field private mDualCameraWaterMarkPaddingXRatio:F

.field private mDualCameraWaterMarkPaddingYRatio:F

.field private mDualCameraWaterMarkSizeRatio:F

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mExifNeeded:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIsImageCaptureIntent:Z

.field private volatile mJpegQueueSize:I

.field private final mLock:Ljava/lang/Object;

.field private mNewStyleTimeWaterMarkPaddingXRatio:F

.field private mNewStyleTimeWaterMarkPaddingYRatio:F

.field private mQuality:I

.field private mRelease:Z

.field private mReleasePending:Z

.field private mTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 81
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    .line 53
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/16 v2, 0x55

    .line 79
    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    .line 88
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    .line 92
    iput-boolean p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    .line 93
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SnapshotEffectProcessor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    .line 94
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance p1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    .line 96
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendMessageSync(I)V

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    .line 99
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 100
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 102
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 106
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 107
    invoke-static {}, Lcom/android/camera/effect/renders/TextWaterMark;->getDualCameraWaterMarkFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/camera/effect/renders/TextWaterMark;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    :cond_0
    const p1, 0x7f070049

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    const p1, 0x7f070047

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    const p1, 0x7f070048

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedNewStyleTimeWaterMark()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f07009f

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingXRatio:F

    const p1, 0x7f0700a0

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingYRatio:F

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/ActivityBase;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingXRatio:F

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingYRatio:F

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/HandlerThread;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$510(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 2

    .line 48
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$900(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p0

    return-object p0
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 249
    sget-object v3, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    .line 253
    aget v5, v0, v7

    if-lez v5, :cond_1

    .line 258
    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 259
    sget-object v3, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 264
    aget-object p0, v8, v7

    return-object p0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig#2 failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 7

    .line 199
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 7

    .line 213
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->initExif()V

    .line 215
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 219
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public getResourceFloat(IF)F
    .locals 2

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 126
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 128
    :catch_0
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public prepareEffectRender(I)V
    .locals 2

    .line 759
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z
    .locals 6

    .line 150
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 152
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueSize is full, drop it "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 155
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 162
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 166
    iput-boolean v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    .line 167
    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v4, v0, v5, v2}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v4}, Lcom/android/camera/Util;->enableFakeThumbnail(Lcom/android/camera/ActivityBase;)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportCameraDynamicLightSpot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->getRawData()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 176
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 178
    :cond_4
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return v3

    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v2, 0x7

    .line 240
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 241
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    :goto_1
    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setQuality(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x55

    if-gt p1, v0, :cond_0

    .line 139
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    :cond_0
    return-void
.end method
