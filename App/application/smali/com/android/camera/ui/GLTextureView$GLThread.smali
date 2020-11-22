.class Lcom/android/camera/ui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;II)V"
        }
    .end annotation

    .line 1026
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1559
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1027
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 1028
    iput p3, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 1029
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1030
    iput v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 1031
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1014
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1073
    new-instance v0, Lcom/android/camera/ui/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1075
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v6, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 1091
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1093
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 1094
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1362
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1363
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1365
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1097
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1098
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v14, v2

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1104
    :cond_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 1105
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1106
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    .line 1107
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1114
    :goto_3
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1119
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 1120
    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1127
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1132
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_8

    .line 1140
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_8

    .line 1141
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 1143
    :cond_6
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$1000(Lcom/android/camera/ui/GLTextureView;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    .line 1144
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1145
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v0, :cond_9

    .line 1154
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1155
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    .line 1163
    :cond_9
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    .line 1167
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 1168
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    .line 1170
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1172
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1176
    :cond_b
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1180
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1181
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1191
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 1195
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1198
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    .line 1201
    :cond_e
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 1203
    :try_start_4
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 1208
    :try_start_5
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1211
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1205
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    .line 1206
    throw v0

    .line 1215
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1216
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v0, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    move v0, v10

    .line 1222
    :goto_6
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_1e

    .line 1223
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v2, :cond_11

    .line 1225
    iget v7, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 1226
    iget v8, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 v2, 0x0

    .line 1237
    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    .line 1239
    :goto_7
    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1240
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    move v10, v0

    .line 1262
    :goto_8
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 1265
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move v0, v2

    goto/16 :goto_0

    :cond_12
    if-eqz v10, :cond_14

    .line 1274
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1275
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v10

    monitor-enter v10
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    .line 1276
    :try_start_7
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1277
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1278
    monitor-exit v10

    move v10, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1280
    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v0, 0x1

    .line 1281
    :try_start_9
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1282
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1283
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1284
    monitor-exit v15

    move v0, v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_9
    if-eqz v11, :cond_15

    .line 1291
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1293
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v6, v0

    move v11, v2

    :cond_15
    if-eqz v9, :cond_17

    .line 1301
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    if-eqz v0, :cond_16

    .line 1303
    invoke-static {v0}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v9, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    iget-object v9, v9, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v6, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v9, v2

    :cond_17
    if-eqz v12, :cond_19

    .line 1312
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    if-eqz v0, :cond_18

    .line 1314
    invoke-static {v0}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6, v7, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v12, v2

    .line 1323
    :cond_19
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    if-eqz v0, :cond_1a

    .line 1325
    invoke-static {v0}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1328
    :cond_1a
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->swap()I

    move-result v0

    const/16 v15, 0x3000

    if-eq v0, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v0, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v2, "eglSwapBuffers"

    .line 1343
    invoke-static {v15, v2, v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1345
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 1346
    :try_start_b
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1347
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1348
    monitor-exit v2

    goto :goto_a

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1b
    const/4 v0, 0x1

    move v3, v0

    goto :goto_a

    :cond_1c
    const/4 v0, 0x1

    :goto_a
    if-eqz v13, :cond_1d

    move v4, v0

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1e
    move v10, v0

    .line 1260
    :cond_1f
    :try_start_d
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 1262
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    :try_start_f
    const-string v2, "GLThread"

    const-string v3, "got exception"

    .line 1357
    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1362
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1363
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1365
    monitor-exit v2

    return-void

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0

    .line 1362
    :goto_b
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1363
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1365
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1374
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1066
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1068
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1069
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1057
    iget-object p0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1370
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1390
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1391
    :try_start_0
    iget p0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 2

    .line 1440
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1444
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1445
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1446
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1451
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1453
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1456
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 3

    .line 1460
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1464
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1465
    iput-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1466
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1467
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1468
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1473
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1475
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1478
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onWindowResize(II)V
    .locals 1

    .line 1482
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1483
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 1484
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1485
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1486
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1487
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1488
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    .line 1492
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1497
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1499
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1502
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1508
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1509
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    .line 1510
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1511
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1513
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1515
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1518
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1522
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1523
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1396
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1397
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1398
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1042
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :catch_0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1383
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1384
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 1385
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1386
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1381
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1403
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1407
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1408
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1409
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1410
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1414
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1416
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1419
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1423
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1427
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    .line 1428
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1431
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1433
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1436
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
