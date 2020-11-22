.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHighPriorityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mCameraHeight:I

.field private mCameraWidth:I

.field protected mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mIsRatio16_9:Z

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field protected mPreCreateSurfaceTexture:Z

.field private mRenderHeight:I

.field protected mRenderLayoutRect:Landroid/graphics/Rect;

.field private mRenderOffsetX:I

.field private mRenderOffsetY:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceTextureGuard:Ljava/lang/Object;

.field protected mSurfaceWidth:I

.field private mTargetRatio:I

.field protected mTheight:I

.field private mTransform:[F

.field protected mTwidth:I

.field protected mTx:I

.field protected mTy:I

.field private mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    const/16 v0, 0x8

    .line 83
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    .line 85
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTextureGuard:Ljava/lang/Object;

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 74
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    .line 75
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 79
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 84
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 86
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .line 299
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    if-ne v0, v1, :cond_0

    const-string v0, "STScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    .line 300
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 302
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 304
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeRatio()V
    .locals 10

    .line 330
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gt v0, v4, :cond_4

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 331
    invoke-static {v0, v4, v5, v6}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 409
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    if-eqz v0, :cond_10

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    if-eqz v4, :cond_10

    .line 410
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-eqz v6, :cond_2

    mul-int v7, v5, v4

    mul-int v8, v6, v0

    if-eq v7, v8, :cond_2

    .line 412
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int v7, v0, v6

    mul-int v8, v4, v5

    if-le v7, v8, :cond_1

    .line 414
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/2addr v4, v5

    .line 415
    div-int/2addr v4, v6

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 416
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 417
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 419
    :cond_1
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    mul-int/2addr v0, v6

    .line 420
    div-int/2addr v0, v5

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 421
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 422
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 425
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 426
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 427
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 428
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 429
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 431
    :goto_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_8

    .line 332
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 333
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 334
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x3f400000    # 0.75f

    if-eqz v5, :cond_b

    if-eq v5, v3, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    goto :goto_2

    .line 394
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 396
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eq v0, v4, :cond_6

    .line 398
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    int-to-float v1, v0

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 401
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v1, v0

    goto/16 :goto_7

    :cond_6
    :goto_2
    move v1, v4

    goto/16 :goto_7

    .line 336
    :cond_7
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 337
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 338
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v5

    if-nez v5, :cond_9

    .line 339
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v1, v0, 0x10

    mul-int/lit8 v5, v4, 0x9

    if-le v1, v5, :cond_8

    int-to-float v1, v4

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v5, v1

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 343
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    goto :goto_3

    :cond_8
    int-to-float v1, v0

    mul-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v5, v1

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 347
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_4

    .line 350
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 351
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 352
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v1, v0

    :goto_3
    move v0, v4

    .line 354
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 355
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 356
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    .line 358
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v8

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    :cond_a
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_7

    .line 362
    :cond_b
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 364
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v5

    if-nez v5, :cond_d

    .line 365
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, v4, 0x3

    if-le v1, v2, :cond_c

    int-to-float v1, v4

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 369
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    move v0, v1

    goto :goto_5

    :cond_c
    int-to-float v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 373
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v4, v1

    goto :goto_5

    .line 376
    :cond_d
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 377
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 378
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 381
    :goto_5
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_e

    .line 382
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 383
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    int-to-float v1, v0

    mul-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 386
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v2, v8

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    goto :goto_6

    :cond_e
    move v1, v4

    .line 389
    :goto_6
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 390
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 406
    :cond_f
    :goto_7
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 407
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 434
    :cond_10
    :goto_8
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 435
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    return-void
.end method

.method private varargs constructSurfaceTexture(Ljava/lang/String;[Ljava/lang/Object;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 128
    :try_start_0
    const-class p0, Landroid/graphics/SurfaceTexture;

    invoke-static {p0, p1}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object p0

    .line 129
    invoke-virtual {p0, p2}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "STScreenNail"

    const-string p2, "constructSurfaceTexture miui failed"

    .line 131
    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private constructSurfaceTextureForAosp(Z)Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 138
    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_0

    .line 139
    new-instance p0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    return-object p0

    :cond_0
    const-string p0, "android.graphics.SurfaceTexture"

    .line 142
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 143
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "STScreenNail"

    const-string v0, "constructSurfaceTexture failed"

    .line 146
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private genTexForUDCFPortrait()I
    .locals 2

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 179
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 180
    aget p0, v0, v1

    return p0
.end method

.method private initializeTexture()V
    .locals 7

    .line 185
    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_2

    :try_start_0
    const-string v0, "(ILandroid/os/Looper;)V"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 192
    iget-object v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    sget-object v6, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTexture(Ljava/lang/String;[Ljava/lang/Object;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 193
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(ILandroid/os/Looper;)V"

    new-array v4, v4, [Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->genTexForUDCFPortrait()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTexture(Ljava/lang/String;[Ljava/lang/Object;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const-string v0, "STScreenNail"

    const-string v4, "fullHandlerCapacity:set urgent display"

    .line 197
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v4, -0x8

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 199
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "STScreenNail"

    const-string v4, "SurfaceTexture Constructor IllegalArgumentException"

    .line 203
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v0, "STScreenNail"

    const-string v4, "SurfaceTexture Constructor NoSuchMethodException"

    .line 201
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTextureGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_3

    const-string v4, "STScreenNail"

    const-string v5, "try new SurfaceTexture"

    .line 210
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_1

    .line 213
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    if-eqz v4, :cond_4

    const-string v4, "STScreenNail"

    const-string v5, "already PreCreate SurfaceTexture call attachToGLContext"

    .line 214
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 219
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 220
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_5

    .line 221
    new-instance v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->genTexForUDCFPortrait()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_2

    .line 223
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    if-eqz v4, :cond_6

    const-string v4, "STScreenNail"

    const-string v5, "already PreCreate UDCF SurfaceTexture call attachToGLContext"

    .line 224
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->genTexForUDCFPortrait()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 228
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 231
    :cond_7
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    .line 232
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_8

    .line 239
    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    .line 241
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 240
    invoke-static {v0, p0, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 242
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    .line 244
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    invoke-static {v0, p0, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_3

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 248
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_9
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 232
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private notifyVideoEncoder(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 1

    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    .line 543
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateRenderSize()V
    .locals 3

    .line 449
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    .line 450
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 451
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0

    .line 454
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    int-to-float v0, v0

    .line 455
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-eqz v0, :cond_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 113
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 114
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    .line 115
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 116
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    const/16 v2, 0x2d0

    mul-int/2addr v1, v2

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v1, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 118
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "STScreenNail"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid width or height: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 111
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13

    .line 478
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 480
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 481
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 482
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 483
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void

    .line 489
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 490
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-nez v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 491
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 494
    :cond_2
    iget v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v11, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v12, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    .line 508
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 515
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 517
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 521
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 522
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateExtraTransformMatrix([F)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move-object v1, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 527
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunModule()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 528
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p0, p2}, Lcom/android/camera/SurfaceTextureScreenNail;->notifyVideoEncoder(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 530
    :cond_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 474
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return p0
.end method

.method public getRenderHeight()I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return p0
.end method

.method public getRenderTargetRatio()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return p0
.end method

.method public getRenderWidth()I
    .locals 0

    .line 460
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getUDCFExtraSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 469
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return p0
.end method

.method public preCreateSurfaceTexture()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTextureGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, v3}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTextureForAosp(Z)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :cond_0
    const-string v1, "(Z)V"

    new-array v4, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {p0, v1, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTexture(Ljava/lang/String;[Ljava/lang/Object;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :goto_0
    const-string v1, "STScreenNail"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preCreateSurfaceTexture mSurfaceTexture="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_3

    .line 164
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-direct {p0, v3}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTextureForAosp(Z)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_1

    :cond_2
    const-string v1, "(Z)V"

    new-array v4, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {p0, v1, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->constructSurfaceTexture(Ljava/lang/String;[Ljava/lang/Object;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :goto_1
    const-string v1, "STScreenNail"

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preCreateSurfaceTexture mUDCFExtraSurfaceTexture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .line 267
    monitor-enter p0

    const/4 v0, 0x0

    .line 268
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 269
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 272
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 276
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 277
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 279
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 282
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 287
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 291
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 293
    :cond_4
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 294
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 295
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    .line 269
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setRenderArea(Landroid/graphics/Rect;)V
    .locals 1

    .line 440
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    .line 441
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 445
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    if-le p1, p2, :cond_0

    .line 314
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 315
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    goto :goto_0

    .line 317
    :cond_0
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 318
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 320
    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getRenderAspectRatio(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 321
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    return-void
.end method

.method public setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
    .locals 0

    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    .line 549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 2

    .line 558
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 559
    invoke-static {}, Lcom/android/camera/Device;->needVideoStabilizationCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0

    .line 561
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    :goto_0
    return-void
.end method

.method protected abstract updateExtraTransformMatrix([F)V
.end method

.method protected updateRenderRect()V
    .locals 7

    .line 593
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 594
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v3, v4

    div-int v0, v3, v0

    :goto_0
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 595
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    sub-int v3, v0, v3

    div-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v4

    :goto_1
    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 596
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 597
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 598
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int v5, v3, v4

    div-int/2addr v5, v1

    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    add-int/2addr v5, p0

    add-int v6, v4, v2

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    add-int/2addr v3, p0

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 601
    :cond_2
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v1, v3

    div-int v0, v1, v0

    :goto_2
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 602
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    mul-int/2addr v1, v3

    div-int v0, v1, v0

    :goto_3
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 603
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 604
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 605
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 7

    .line 569
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    sget v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float/2addr v0, v2

    .line 571
    sget v4, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float/2addr v4, v2

    move v5, v1

    goto :goto_0

    :cond_0
    move v0, v2

    move v4, v0

    move v5, v3

    .line 574
    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v6, :cond_1

    .line 575
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v0, v5

    .line 576
    iget p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v4, p0

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-eqz v1, :cond_2

    const/4 p0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 582
    invoke-static {p1, v3, v1, v1, p0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 583
    invoke-static {p1, v3, v0, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 584
    invoke-static {p1, v3, v0, v0, p0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_2
    return-void
.end method
