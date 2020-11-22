.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/camera/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$RequestRenderListener;,
        Lcom/android/camera/CameraScreenNail$NailListener;,
        Lcom/android/camera/CameraScreenNail$CopyReason;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraScreenNail"


# instance fields
.field private mAnimState:I

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mDisableSwitchAnimationOnce:Z

.field private mFirstFrameArrived:Z

.field private mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLock:Ljava/lang/Object;

.field private mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

.field private mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private mRequestRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 95
    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 98
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 99
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 100
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 101
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 7

    .line 555
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    .line 556
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v6

    .line 557
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    if-nez p3, :cond_0

    .line 560
    new-instance p3, Lcom/android/camera/effect/FrameBuffer;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    .line 563
    :cond_0
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 564
    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 565
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method

.method private notifyFrameAvailable(I)V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 703
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {p0, p1}, Lcom/android/camera/CameraScreenNail$NailListener;->onFrameAvailable(I)V

    return-void
.end method

.method private postRequestListener()V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraScreenNail$RequestRenderListener;

    .line 158
    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$RequestRenderListener;->requestRender()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;II)[B
    .locals 9

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 540
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 543
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 544
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v1, :cond_0

    .line 545
    new-instance v1, Lcom/android/camera/effect/FrameBuffer;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 548
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, v0

    .line 549
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 550
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 551
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 6

    .line 577
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    .line 578
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    .line 580
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 584
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareBlurRenders()V

    .line 585
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 586
    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 587
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    .line 168
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateCapture(I)V
    .locals 3

    .line 287
    iget-object p1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 288
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCapture: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    .line 291
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    .line 292
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 294
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateHold(I)V
    .locals 3

    .line 337
    iget-object p1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 338
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateHold: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHold()V

    .line 341
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    .line 342
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 344
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateModuleChangeAfter()V
    .locals 4

    .line 207
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 209
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moduleChangeAfter: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x20

    const/16 v3, 0x22

    if-ne v1, v2, :cond_0

    .line 212
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "ANIM_MODULE_DRAW_PREVIEW->ANIM_MODULE_WAITING_FIRST_FRAME"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 214
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 215
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto :goto_0

    .line 216
    :cond_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 217
    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 219
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 221
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public animateModuleChangeBefore()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moduleChangeBefore: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/16 v1, 0x21

    .line 199
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 200
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 201
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 203
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateModuleCopyTexture()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v1, 0x1f

    .line 190
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 191
    sget-object p0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "state=MODULE_COPY_TEXTURE"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animatePortraitZoomBefore()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    const/16 v1, 0x26

    .line 270
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 271
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 272
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 274
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animatePortraitZoomCopyTexture()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v1, 0x24

    .line 259
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 260
    sget-object p0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "state=ANIM_PORTRAIT_ZOOM_COPY_TEXTURE"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateSlide()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 354
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 358
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 359
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateSwitchCameraBefore()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    const/16 v1, 0x17

    .line 249
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 250
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 251
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 253
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateSwitchCopyTexture()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v1, 0x15

    .line 238
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 239
    sget-object p0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "state=SWITCH_COPY_TEXTURE"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAnimation()V
    .locals 1

    .line 226
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 228
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 231
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {p0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public disableSwitchAnimationOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 368
    iget-object v14, v0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 370
    :try_start_0
    iget-boolean v1, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 371
    iput-boolean v1, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 373
    :cond_0
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 376
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_2

    if-le v12, v13, :cond_1

    sub-int v1, v12, v13

    .line 378
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    move v2, v1

    move v3, v11

    move v4, v13

    goto :goto_0

    :cond_1
    sub-int v1, v13, v12

    .line 381
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    move v3, v1

    move v2, v10

    move v4, v12

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_2
    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    .line 385
    :goto_1
    iget-object v0, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 386
    monitor-exit v14

    return-void

    .line 388
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    if-eqz v8, :cond_1e

    .line 389
    iget-boolean v1, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v1, :cond_4

    goto/16 :goto_c

    .line 399
    :cond_4
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v7, 0x0

    if-eqz v1, :cond_11

    const/16 v2, 0xb

    if-eq v1, v2, :cond_10

    const/16 v2, 0xd

    if-eq v1, v2, :cond_c

    const/16 v2, 0xe

    if-eq v1, v2, :cond_b

    const/16 v2, 0x15

    const/16 v3, 0x16

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_9

    const/16 v2, 0x1f

    const/16 v3, 0x20

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_7

    const/16 v2, 0x24

    const/16 v3, 0x25

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_6

    move v15, v7

    goto/16 :goto_5

    .line 467
    :cond_5
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 468
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 469
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    sget-object v2, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    .line 470
    iput v3, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 471
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=SWITCH_DRAW_PREVIEW"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 475
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v6, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    move v15, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto/16 :goto_5

    :cond_7
    move v15, v7

    goto :goto_2

    :cond_8
    move v15, v7

    .line 456
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 457
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 458
    iput v3, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 459
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=MODULE_DRAW_PREVIEW"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 463
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v7, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto/16 :goto_5

    :cond_9
    move v15, v7

    goto :goto_3

    :cond_a
    move v15, v7

    .line 435
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 436
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 437
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    sget-object v2, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    .line 438
    iput v3, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 439
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=SWITCH_DRAW_PREVIEW"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 446
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v7, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_5

    :cond_b
    move v15, v7

    .line 431
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    goto :goto_5

    :cond_c
    move v15, v7

    .line 404
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 406
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    .line 407
    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    mul-int v3, v12, v2

    mul-int v4, v13, v1

    if-le v3, v4, :cond_e

    if-nez v12, :cond_d

    goto :goto_4

    .line 415
    :cond_d
    div-int v2, v4, v12

    goto :goto_4

    :cond_e
    if-nez v13, :cond_f

    goto :goto_4

    .line 422
    :cond_f
    div-int v1, v3, v13

    .line 426
    :goto_4
    invoke-direct {v0, v9, v1, v2}, Lcom/android/camera/CameraScreenNail;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;II)[B

    move-result-object v3

    .line 427
    iput v15, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 428
    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v4, v3, v1, v2}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewPixelsRead([BII)V

    goto :goto_5

    :cond_10
    move v15, v7

    .line 449
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 450
    iget-object v1, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 451
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    const/16 v1, 0xc

    .line 452
    iput v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 453
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=CAPTURE_RUNNING"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    move v15, v7

    .line 401
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 479
    :goto_5
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x17

    const/16 v7, 0x19

    if-eq v1, v2, :cond_19

    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_19

    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v7, :cond_12

    goto/16 :goto_8

    .line 502
    :cond_12
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_14

    .line 503
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v2, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1, v9, v2}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_b

    .line 509
    :cond_13
    iput v15, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 510
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_b

    .line 512
    :cond_14
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x21

    const/16 v7, 0x23

    if-eq v1, v2, :cond_16

    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_16

    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v7, :cond_15

    goto :goto_6

    .line 528
    :cond_15
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1d

    .line 529
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 530
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_b

    .line 516
    :cond_16
    :goto_6
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 517
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v15, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 520
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v15, :cond_17

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    .line 524
    iput v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 526
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_b

    .line 521
    :cond_18
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto :goto_b

    .line 483
    :cond_19
    :goto_8
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 486
    iget-boolean v1, v0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    if-eqz v1, :cond_1a

    .line 487
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v15, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    const/4 v7, 0x0

    goto :goto_9

    :cond_1a
    move v15, v7

    .line 489
    iget-object v1, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v7

    :goto_9
    if-nez v7, :cond_1c

    .line 493
    iget v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v15, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    .line 497
    iput v1, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 498
    iput-boolean v1, v0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    .line 500
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_b

    .line 494
    :cond_1c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 536
    :cond_1d
    :goto_b
    monitor-exit v14

    return-void

    .line 390
    :cond_1e
    :goto_c
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw: firstFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPreCreateSurfaceTexture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_20

    .line 392
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportStartupOptimize()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v0, v0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreCreateSurfaceTexture:Z

    if-nez v0, :cond_20

    .line 393
    :cond_1f
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "draw: updateTexImage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 396
    :cond_20
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    .line 536
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7

    .line 569
    new-instance v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v0, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method public getRenderRect()Landroid/graphics/Rect;
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isAnimationRunning()Z
    .locals 0

    .line 333
    iget p0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModuleSwitching()Z
    .locals 0

    .line 329
    iget-boolean p0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 621
    sget-object p0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string p1, "onFrameAvailable: surface changed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 625
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 630
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeEnd()V

    .line 631
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 632
    invoke-direct {p0, v1}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    .line 638
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 639
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_4

    .line 640
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const/16 v0, 0x19

    .line 641
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 642
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "SWITCH_WAITING_FIRST_FRAME->SWITCH_RESUME"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    goto :goto_0

    .line 644
    :cond_2
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    const/16 v0, 0x23

    .line 645
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 646
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "MODULE_WAITING_FIRST_FRAME->MODULE_RESUME"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    .line 651
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/4 v0, 0x4

    .line 653
    invoke-direct {p0, v0}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    .line 655
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$NailListener;->isKeptBitmapTexture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 599
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 600
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    :cond_0
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    const/4 v1, 0x0

    .line 176
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 177
    sget-object v2, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v3, "release: state=NONE"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public renderBitmapToCanvas(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 592
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 593
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    return-void
.end method

.method public renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    return-void
.end method

.method public requestAwaken()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 309
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 310
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 312
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestHibernate()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v1, :cond_0

    const/16 v1, 0xe

    .line 300
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 301
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 303
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestReadPixels()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v1, :cond_0

    const/16 v1, 0xd

    .line 318
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 319
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 321
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetFrameAvailableFlag()V
    .locals 1

    .line 695
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 7

    .line 663
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "setPreviewFrameLayoutSize: %dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d0

    :goto_0
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    .line 666
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit16 p2, p2, 0x2d0

    .line 667
    div-int/2addr p2, p1

    :goto_1
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    .line 669
    iget-object p1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 670
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 671
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public switchCameraDone()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDone: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const/16 v1, 0x18

    .line 281
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 283
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public switchModule()V
    .locals 1

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    return-void
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 5

    .line 677
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    move v0, p0

    goto :goto_1

    .line 680
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->getExtScaleX()F

    move-result v0

    .line 681
    iget-object p0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {p0}, Lcom/android/camera/SwitchAnimManager;->getExtScaleY()F

    move-result p0

    :goto_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 684
    invoke-static {p1, v4, v3, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 685
    invoke-static {p1, v4, v0, p0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 p0, -0x41000000    # -0.5f

    .line 686
    invoke-static {p1, v4, p0, p0, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_3
    return-void
.end method
