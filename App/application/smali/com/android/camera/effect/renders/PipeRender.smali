.class public Lcom/android/camera/effect/renders/PipeRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PipeRender"


# instance fields
.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method private declared-synchronized destroyFrameBuffers()V
    .locals 4

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    array-length v0, v0

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 150
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    array-length v0, v0

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 154
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initFrameBuffers(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    if-gtz v0, :cond_0

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFrameBuffers: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    .line 165
    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 167
    iget-object v5, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    const/4 v15, 0x1

    invoke-static {v15, v5, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 168
    iget-object v5, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    invoke-static {v15, v5, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 169
    iget-object v5, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v5, v5, v3

    const/16 v13, 0xde1

    invoke-static {v13, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/16 v16, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    move v15, v13

    move-object/from16 v13, v16

    .line 170
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v5, 0x2800

    const v6, 0x46180400    # 9729.0f

    .line 172
    invoke-static {v15, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    .line 174
    invoke-static {v15, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 176
    invoke-static {v15, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    .line 178
    invoke-static {v15, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 181
    iget-object v5, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v5, v5, v3

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    .line 182
    iget-object v7, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v7, v7, v3

    invoke-static {v6, v5, v15, v7, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 184
    sget-object v5, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "fbo[%d]: %d %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v10, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v10, v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    iget-object v11, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v11, v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 184
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 190
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 128
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    if-lez p1, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    if-lez v0, :cond_1

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/PipeRender;->reInitFrameBuffers(II)V

    :cond_1
    return-void
.end method

.method public deleteBuffer()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 138
    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRender;->destroyFrameBuffers()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    iget-object v2, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 43
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    .line 64
    sget-object v4, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    goto :goto_1

    .line 55
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 56
    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    .line 57
    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 58
    iget v6, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 59
    iget v7, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    .line 60
    iget v8, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    .line 61
    iget-boolean v2, v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    goto :goto_0

    .line 46
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 47
    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 48
    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 49
    iget v6, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 50
    iget v7, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 51
    iget-object v8, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v8

    .line 52
    iget-boolean v2, v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    :goto_0
    move v15, v2

    move v2, v8

    :goto_1
    if-eqz v6, :cond_b

    if-nez v7, :cond_3

    goto/16 :goto_7

    .line 72
    :cond_3
    iget v14, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    .line 73
    iget v13, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    const/4 v8, 0x0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x1

    if-eqz v12, :cond_a

    .line 77
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_a

    .line 79
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/effect/renders/Render;

    add-int/lit8 v3, v11, -0x1

    if-ge v10, v3, :cond_4

    move/from16 v3, v16

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v17, v9

    if-eqz v3, :cond_5

    .line 83
    iget-object v9, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v9, v9, v10

    invoke-virtual {v0, v9, v14, v13}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(III)V

    :cond_5
    if-nez v10, :cond_7

    if-eqz v3, :cond_6

    .line 88
    new-instance v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v9

    move-object/from16 v21, v9

    move-object/from16 v20, v17

    move v9, v2

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move/from16 v11, v19

    move-object/from16 v19, v12

    move v12, v14

    move/from16 v22, v13

    move/from16 v23, v2

    move v2, v14

    move v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    .line 90
    invoke-virtual {v9, v8}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_4
    move/from16 v14, v22

    goto :goto_5

    :cond_6
    move/from16 v23, v2

    move/from16 v18, v11

    move-object/from16 v19, v12

    move/from16 v22, v13

    move v2, v14

    move-object/from16 v9, v17

    move/from16 v17, v10

    .line 92
    invoke-virtual {v9, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_4

    :cond_7
    move/from16 v23, v2

    move/from16 v18, v11

    move-object/from16 v19, v12

    move/from16 v22, v13

    move v2, v14

    move-object/from16 v9, v17

    move/from16 v17, v10

    .line 95
    iget-object v10, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    add-int/lit8 v11, v17, -0x1

    aget v10, v10, v11

    move/from16 v14, v22

    invoke-virtual {v9, v10, v2, v14}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    if-nez v3, :cond_8

    .line 97
    iput v4, v8, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    .line 98
    iput v5, v8, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 99
    iput v6, v8, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 100
    iput v7, v8, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    .line 102
    :cond_8
    invoke-virtual {v9, v8}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_5
    if-eqz v3, :cond_9

    .line 106
    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v9, v8, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    move v12, v2

    move v13, v14

    move/from16 v20, v14

    move v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    goto :goto_6

    :cond_9
    move/from16 v20, v14

    :goto_6
    add-int/lit8 v10, v17, 0x1

    move v14, v2

    move/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v13, v20

    move/from16 v2, v23

    goto/16 :goto_2

    :cond_a
    return v16

    :cond_b
    :goto_7
    const/4 v0, 0x0

    return v0

    :cond_c
    :goto_8
    const/4 v0, 0x0

    .line 33
    sget-object v1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    const-string v2, "framebuffer hasn\'t been initialized"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public reInitFrameBuffers(II)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRender;->destroyFrameBuffers()V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/effect/renders/PipeRender;->initFrameBuffers(III)V

    return-void
.end method

.method public setFrameBufferSize(II)V
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    if-eq v0, p2, :cond_1

    .line 118
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    .line 119
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/PipeRender;->reInitFrameBuffers(II)V

    :cond_1
    return-void
.end method
