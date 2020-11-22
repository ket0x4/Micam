.class public Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;
.super Ljava/lang/Object;
.source "EffectPopup.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDynamicItemRender"
.end annotation


# instance fields
.field mEffectIndex:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 1

    .line 427
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 429
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 446
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    monitor-enter v0

    .line 450
    :try_start_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 452
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v1

    .line 453
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v2

    .line 454
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 455
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v3}, Lcom/android/camera/ui/EffectPopup;->access$200(Lcom/android/camera/ui/EffectPopup;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v4}, Lcom/android/camera/ui/EffectPopup;->access$300(Lcom/android/camera/ui/EffectPopup;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 456
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 458
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    .line 461
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 462
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v4

    .line 463
    iget v5, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 464
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 465
    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$400(Lcom/android/camera/ui/EffectPopup;)I

    move-result v9

    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$500(Lcom/android/camera/ui/EffectPopup;)I

    move-result v10

    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$600(Lcom/android/camera/ui/EffectPopup;)I

    move-result v11

    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$700(Lcom/android/camera/ui/EffectPopup;)I

    move-result v12

    move-object v6, v5

    .line 464
    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 466
    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 467
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 469
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 470
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 471
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 467
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 471
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
