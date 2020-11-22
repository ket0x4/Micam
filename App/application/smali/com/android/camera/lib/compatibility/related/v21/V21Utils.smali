.class public Lcom/android/camera/lib/compatibility/related/v21/V21Utils;
.super Ljava/lang/Object;
.source "V21Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public static setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-void
.end method
