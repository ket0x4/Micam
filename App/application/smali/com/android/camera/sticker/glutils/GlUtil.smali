.class public Lcom/android/camera/sticker/glutils/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# direct methods
.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlDemoUtil"

    .line 143
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initEffectTexture(II[II)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-static {v1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 122
    aget v1, p2, v0

    invoke-static {p3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0x2800

    .line 123
    invoke-static {p3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 125
    invoke-static {p3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v1, 0x47012f00    # 33071.0f

    const/16 v2, 0x2802

    .line 127
    invoke-static {p3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 129
    invoke-static {p3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v3, p3

    move v6, p0

    move v7, p1

    .line 131
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 133
    aget p0, p2, v0

    return p0
.end method
