.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;
    }
.end annotation


# static fields
.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final MIN_DETECT_DISTANCE:I

.field private final mActivity:Lcom/android/camera/Camera;

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mCurrentModule:Lcom/android/camera/module/Module;

.field private mDistanceX:F

.field private mDistanceY:F

.field private mEdgeGesture:I

.field private final mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInScaling:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleDetectorEnable:Z

.field private mScrollDirection:I

.field private mScrolled:Z

.field private mTouchDown:Z


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 39
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    .line 60
    move-object v1, p1

    check-cast v1, Lcom/android/camera/Camera;

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    .line 62
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    .line 63
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 64
    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v0, v1}, Lcom/android/camera/ui/EdgeGestureDetector;-><init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    .line 65
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 66
    new-instance p1, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return p0
.end method

.method static synthetic access$1016(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return p0
.end method

.method static synthetic access$1116(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p0
.end method

.method static synthetic access$312(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p1
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 163
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_5

    .line 165
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v1, 0x7f0900fe

    .line 166
    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    .line 167
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 169
    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    :cond_1
    const/4 v1, 0x2

    .line 179
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isIndicatorVisible(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v1

    .line 181
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isDragged()Z

    move-result v3

    const v4, 0x7f090101

    .line 182
    invoke-interface {v0, v4, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    .line 183
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result p1

    const/4 v4, 0x7

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 185
    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isDragged()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 189
    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    .line 202
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private couldNotifyGesture(Z)Z
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2

    const-class v0, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v1, v1, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-eq p0, v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 73
    :cond_1
    sget-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 0

    .line 264
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    sub-int/2addr p1, p3

    .line 265
    iput p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p4

    .line 266
    iput p2, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method private isCurrentModuleAlive()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 94
    invoke-interface {p0}, Lcom/android/camera/module/Module;->isDeparted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureDetecting(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 399
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :goto_0
    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static onDestroy(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 485
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 487
    sput-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 0

    .line 411
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public getGestureOrientation()I
    .locals 0

    .line 407
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public isGestureDetecting()Z
    .locals 0

    .line 403
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent mGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGestureRecognizer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 103
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 115
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-nez v0, :cond_2

    return v2

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 121
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 124
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_6

    .line 125
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    .line 126
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    .line 127
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    .line 128
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_6
    const-string v0, "set to detector"

    .line 131
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    goto :goto_1

    .line 138
    :cond_7
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    .line 142
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 151
    :cond_9
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 152
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    .line 154
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    .line 155
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    .line 156
    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_a
    return v0
.end method

.method public setCurrentModule(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public setGesture(I)V
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return-void
.end method

.method public setScaleDetectorEnable(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    return-void
.end method
