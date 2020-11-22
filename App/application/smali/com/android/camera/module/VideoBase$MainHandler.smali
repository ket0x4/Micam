.class public Lcom/android/camera/module/VideoBase$MainHandler;
.super Landroid/os/Handler;
.source "VideoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1215
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1219
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1222
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    return-void

    .line 1225
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x80

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-eq v0, v2, :cond_6

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 1330
    invoke-static {}, Lcom/android/camera/module/VideoBase;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1310
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1311
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    const/4 p1, 0x6

    const v0, 0x7f0f00e2

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 1305
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/VideoBase;->onPreviewStart()V

    .line 1306
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iput-object v4, p0, Lcom/android/camera/module/VideoBase;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    goto/16 :goto_0

    .line 1300
    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iput-boolean v5, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 1301
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto/16 :goto_0

    .line 1292
    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    .line 1293
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {p1, v0}, Lcom/android/camera/module/VideoBase;->onStopVideoRecording(Z)V

    .line 1294
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz p1, :cond_7

    .line 1295
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    goto/16 :goto_0

    .line 1286
    :pswitch_4
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/VideoBase;->isSelectingCapturedVideo()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1287
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    .line 1269
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1270
    iput-boolean v1, p1, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    .line 1274
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget v0, p1, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v2, p1, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    iget-object v3, p1, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 1275
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 1276
    invoke-static {}, Lcom/android/camera/module/VideoBase;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoBase\'s handler switch camera done."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 1265
    :pswitch_6
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 1261
    :pswitch_7
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-static {p0}, Lcom/android/camera/module/VideoBase;->access$000(Lcom/android/camera/module/VideoBase;)V

    goto/16 :goto_0

    .line 1227
    :pswitch_8
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iput-boolean v5, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    goto/16 :goto_0

    .line 1242
    :pswitch_9
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    goto/16 :goto_0

    .line 1231
    :pswitch_a
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1251
    :pswitch_b
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    if-eq p1, v1, :cond_3

    iget-boolean p1, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_3

    .line 1253
    invoke-virtual {p1}, Lcom/android/camera/module/VideoBase;->startPreview()V

    .line 1255
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-wide v2, p0, Lcom/android/camera/module/VideoBase;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gez p1, :cond_7

    .line 1256
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1322
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/module/VideoBase$MainHandler;->mAbandoned:Z

    .line 1323
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz p1, :cond_7

    .line 1324
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 1325
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iput-object v4, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    goto :goto_0

    .line 1318
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    goto :goto_0

    .line 1235
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1238
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_0
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_c
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
