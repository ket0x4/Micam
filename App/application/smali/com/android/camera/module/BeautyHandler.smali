.class public Lcom/android/camera/module/BeautyHandler;
.super Ljava/lang/Object;
.source "BeautyHandler.java"


# instance fields
.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 37
    iput-object p1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    return-void
.end method

.method private resumeMakeupRender()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 112
    sget v1, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    :cond_1
    return-void
.end method


# virtual methods
.method public onBeautyStatusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    .line 132
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 139
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 140
    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    :goto_0
    return-void
.end method

.method public onCameraSwitched(Z)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    return-void
.end method

.method public onCreate(IILcom/android/camera/Camera;)V
    .locals 0

    .line 41
    invoke-virtual {p3}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 42
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    .line 43
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 87
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->setBuffer([BII)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BeautyHandler;->resumeMakeupRender()V

    .line 93
    :goto_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

.method public onStop(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 57
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    .line 66
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    .line 67
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    return-void
.end method

.method public releaseMakeupRender()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/WrapperRender;->destroy()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    :cond_0
    return-void
.end method

.method public setPreviewCallback()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 78
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->needPreviewCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method
