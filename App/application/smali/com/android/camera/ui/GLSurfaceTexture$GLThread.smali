.class Lcom/android/camera/ui/GLSurfaceTexture$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

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

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
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
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .line 953
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1485
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 954
    iput v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 955
    iput v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 956
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 957
    iput v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 958
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z
    .locals 0

    .line 950
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

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

    .line 1000
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    iget-object v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    const/4 v0, 0x0

    .line 1001
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 1002
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

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

    .line 1018
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1020
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 1021
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1288
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1289
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1291
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1024
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1025
    iget-object v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v14, v2

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1031
    :cond_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 1032
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1033
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    iput-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    .line 1034
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1041
    :goto_3
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 1047
    iput-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1059
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_8

    .line 1067
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_8

    .line 1068
    iget-object v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLSurfaceTexture;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 1070
    :cond_6
    invoke-static {v2}, Lcom/android/camera/ui/GLSurfaceTexture;->access$1000(Lcom/android/camera/ui/GLSurfaceTexture;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    .line 1071
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1072
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v0, :cond_9

    .line 1081
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1082
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    .line 1090
    :cond_9
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    .line 1094
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 1095
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    .line 1097
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1098
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1099
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1103
    :cond_b
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1107
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    .line 1108
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 1117
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1118
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 1122
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1125
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    .line 1128
    :cond_e
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 1130
    :try_start_4
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 1135
    :try_start_5
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 1138
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1132
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 1133
    throw v0

    .line 1142
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1143
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    const/4 v0, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    move v0, v10

    .line 1149
    :goto_6
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_1e

    .line 1150
    iget-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    if-eqz v2, :cond_11

    .line 1152
    iget v7, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 1153
    iget v8, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    const/4 v2, 0x0

    .line 1164
    iput-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    const/4 v0, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    .line 1166
    :goto_7
    iput-boolean v2, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1167
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    move v10, v0

    .line 1189
    :goto_8
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 1192
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move v0, v2

    goto/16 :goto_0

    :cond_12
    if-eqz v10, :cond_14

    .line 1201
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1202
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v10

    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    .line 1203
    :try_start_7
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1204
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1205
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

    .line 1207
    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v0, 0x1

    .line 1208
    :try_start_9
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1209
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1210
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1211
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

    .line 1218
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1220
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v6, v0

    move v11, v2

    :cond_15
    if-eqz v9, :cond_17

    .line 1228
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_16

    .line 1230
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$1100(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v9, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    iget-object v9, v9, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v6, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v9, v2

    :cond_17
    if-eqz v12, :cond_19

    .line 1239
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_18

    .line 1241
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$1100(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6, v7, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v12, v2

    .line 1250
    :cond_19
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_1a

    .line 1252
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$1100(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1255
    :cond_1a
    iget-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->swap()I

    move-result v0

    const/16 v15, 0x3000

    if-eq v0, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v0, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v2, "eglSwapBuffers"

    .line 1270
    invoke-static {v15, v2, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 1273
    :try_start_b
    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1274
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1275
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

    .line 1187
    :cond_1f
    :try_start_d
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 1189
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 1288
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1289
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1291
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1300
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

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

    .line 993
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 995
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 996
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 982
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 983
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 984
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1296
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

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

    .line 1316
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1317
    :try_start_0
    iget p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 2

    .line 1366
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1370
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1371
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1372
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1377
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1379
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1382
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

    .line 1386
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1390
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1391
    iput-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1392
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1393
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1394
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1399
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1401
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1404
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

    .line 1408
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1409
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 1410
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1411
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 1412
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1413
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1414
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1417
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1423
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1425
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1428
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

    .line 1434
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1435
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    .line 1436
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1437
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1439
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1441
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1444
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

    .line 1448
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    .line 1449
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 963
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

    .line 969
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    :catch_0
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1309
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1310
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 1311
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1307
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1329
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1333
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1334
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1335
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1336
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1340
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1342
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1345
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
