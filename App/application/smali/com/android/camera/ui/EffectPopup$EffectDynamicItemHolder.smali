.class public Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;
.super Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDynamicItemHolder"
.end annotation


# instance fields
.field protected mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

.field protected mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

.field protected mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 2

    .line 540
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 541
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    const v0, 0x7f090040

    .line 543
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    .line 545
    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-direct {p2, p1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    .line 546
    new-instance p2, Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-direct {p2}, Lcom/android/camera/ui/GLSurfaceTexture;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 547
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->setEGLContextClientVersion(I)V

    .line 548
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 549
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->setPreserveEGLContextOnPause(Z)V

    .line 550
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->setRenderMode(I)V

    .line 551
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$200(Lcom/android/camera/ui/EffectPopup;)I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$300(Lcom/android/camera/ui/EffectPopup;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture;->setSize(II)V

    .line 552
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 553
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLSurfaceTexture;->startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 0

    .line 558
    invoke-super {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    .line 559
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->bindEffectIndex(I)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->pause()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->resume()V

    .line 586
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 587
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 573
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    .line 572
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture;->startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->stop()V

    return-void
.end method
