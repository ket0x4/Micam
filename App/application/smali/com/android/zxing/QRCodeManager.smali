.class public Lcom/android/zxing/QRCodeManager;
.super Ljava/lang/Object;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/QRCodeManager$MyHandler;,
        Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    }
.end annotation


# static fields
.field private static CENTER_FRAME_WIDTH:I

.field private static final DECODE_TOTAL_TIME:I

.field private static MAX_FRAME_HEIGHT:I

.field private static MAX_FRAME_WIDTH:I

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/android/zxing/QRCodeManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mDecode:Z

.field private mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

.field private mNeedScan:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewLayoutHeight:I

.field private mPreviewLayoutWidth:I

.field private mPreviewWidth:I

.field private mRectFinderCenter:Landroid/graphics/Rect;

.field private mRectFinderFocusArea:Landroid/graphics/Rect;

.field private mRectPreviewCenter:Landroid/graphics/Rect;

.field private mRectPreviewFocusArea:Landroid/graphics/Rect;

.field private mResult:Ljava/lang/String;

.field private mResumeTime:J

.field private mUIInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/android/camera/Device;->isLowPowerQRScan()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a98

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    const/16 v0, 0x168

    .line 67
    sput v0, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    const/16 v0, 0x1e0

    .line 68
    sput v0, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    const/16 v0, 0x2d0

    .line 69
    sput v0, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 77
    sget v0, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v0, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    .line 78
    sput v0, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 39
    iput v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    .line 81
    new-instance v0, Lcom/android/zxing/QRCodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/QRCodeManager$1;-><init>(Lcom/android/zxing/QRCodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/zxing/QRCodeManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/zxing/QRCodeManager;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 32
    sget v0, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/zxing/QRCodeManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/zxing/QRCodeManager;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/zxing/QRCodeManager;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/zxing/QRCodeManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    return-void
.end method

.method private exitDecode()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0x7f09004e

    .line 340
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->quit()V

    :cond_1
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-void
.end method

.method private hide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;
    .locals 2

    .line 189
    sget-object v0, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/zxing/QRCodeManager;

    invoke-direct {v0}, Lcom/android/zxing/QRCodeManager;-><init>()V

    .line 192
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1

    .line 198
    sget-object v0, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/QRCodeManager;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    :cond_0
    return-void
.end method

.method private scanQRCodeEnabled()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    if-eqz p0, :cond_0

    .line 178
    invoke-interface {p0}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendDecodeMessageSafe(I)V
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startDecodeThreadIfNeeded()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/zxing/DecodeHandlerFactory;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/DecodeHandlerFactory;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 221
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->start()V

    :cond_0
    return-void
.end method

.method private updateRectInPreview()V
    .locals 7

    .line 278
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 280
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 281
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, p0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v1, v5

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {v2, v3, v4, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;
    .locals 8

    .line 323
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 324
    iget-object p4, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 325
    new-instance p4, Lcom/android/zxing/YUVLuminanceSource;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    return-object p4

    .line 328
    :cond_0
    iget-object p4, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    .line 329
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 330
    new-instance p4, Lcom/android/zxing/YUVLuminanceSource;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    return-object p4

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    return-void
.end method

.method public needScanQRCode(Z)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    .line 112
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    .line 114
    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0900f8

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz p1, :cond_3

    .line 120
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->startDecodeThreadIfNeeded()V

    :cond_3
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->hide()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 208
    iput-object p3, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    .line 209
    new-instance p1, Lcom/android/zxing/QRCodeManager$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/zxing/QRCodeManager$MyHandler;-><init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->removeInstance(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 303
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 304
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 297
    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-void
.end method

.method public requestDecode()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 317
    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    :cond_0
    return-void
.end method

.method public resetQRScanExit(Z)V
    .locals 13

    if-eqz p1, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    .line 356
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v8

    goto :goto_0

    :cond_1
    move p1, v9

    .line 358
    :goto_0
    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    if-eq v2, v12, :cond_2

    iget-wide v4, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_2

    int-to-long v6, v2

    move-wide v2, v0

    .line 359
    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    .line 360
    iget-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-nez v2, :cond_4

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we should not decode qrcode, mResumeTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " resumetime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " decodetime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " paused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QRCodeManager"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_4
    iget-boolean p1, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    if-eq v2, v12, :cond_5

    const v2, 0x7f090035

    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long/2addr v0, v5

    sub-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    return-void
.end method

.method public setPreviewLayoutSize(II)V
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    if-eq v0, p2, :cond_1

    .line 231
    :cond_0
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    .line 232
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    .line 233
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect()V

    :cond_1
    return-void
.end method

.method public setTransposePreviewSize(II)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    if-eq v0, p1, :cond_1

    .line 239
    :cond_0
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    .line 240
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    .line 241
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 100
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.scanner.receiver.senderbarcodescanner"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.xiaomi.scanner"

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x3

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    :cond_0
    return-void
.end method

.method public updateViewFinderRect()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateViewFinderRect(Landroid/graphics/Point;)V
    .locals 5

    .line 250
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v1, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 251
    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 253
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 254
    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    .line 257
    iget-object v4, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 260
    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 261
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v3, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 262
    iget v3, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 263
    iget v4, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 264
    iget v4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 265
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 266
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    :goto_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    return-void
.end method
