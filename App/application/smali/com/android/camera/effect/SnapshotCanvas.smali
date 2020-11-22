.class public Lcom/android/camera/effect/SnapshotCanvas;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "SnapshotCanvas.java"


# instance fields
.field private final BASIC_RENDER_INDEX:I

.field private final EFFECT_GROUP_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->EFFECT_GROUP_INDEX:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->BASIC_RENDER_INDEX:I

    .line 12
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 13
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

    return-void
.end method


# virtual methods
.method public getBasicRender()Lcom/android/camera/effect/renders/BasicRender;
    .locals 1

    .line 25
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/BasicRender;

    return-object p0
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/RenderGroup;

    return-object p0
.end method
