.class public abstract Lcom/android/camera/effect/renders/Render;
.super Ljava/lang/Object;
.source "Render.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/Render$FrameBufferCallback;
    }
.end annotation


# instance fields
.field private mFrameBufferCallback:Lcom/android/camera/effect/renders/Render$FrameBufferCallback;

.field protected mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field protected mId:I

.field protected mJpegOrientation:I

.field protected mMirror:Z

.field protected mOldViewportHeight:I

.field protected mOldViewportWidth:I

.field protected mOrientation:I

.field protected mParentFrameBufferId:I

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mShootRotation:F

.field protected mSnapshotOriginHeight:I

.field protected mSnapshotOriginWidth:I

.field protected mViewportHeight:I

.field protected mViewportWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 42
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 48
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 50
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return-void
.end method


# virtual methods
.method public deleteBuffer()V
    .locals 0

    return-void
.end method

.method public abstract destroy()V
.end method

.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
.end method

.method public getFrameBufferCallback()Lcom/android/camera/effect/renders/Render$FrameBufferCallback;
    .locals 1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mFrameBufferCallback:Lcom/android/camera/effect/renders/Render$FrameBufferCallback;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return p0
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 0

    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/Render;->mMirror:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    .line 64
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    return-void
.end method

.method public setPreviousFrameBufferInfo(III)V
    .locals 0

    return-void
.end method

.method public setShootRotation(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mShootRotation:F

    return-void
.end method

.method public setSnapshotSize(II)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    .line 85
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setViewportSize(II)V
    .locals 1

    .line 54
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    .line 55
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    .line 56
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    if-nez v0, :cond_0

    .line 57
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    .line 58
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    :cond_0
    return-void
.end method

.method protected updateViewport()V
    .locals 3

    .line 89
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Lcom/android/camera/effect/GLCanvasState;->ortho(FFFF)V

    return-void
.end method
