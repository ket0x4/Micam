.class Lcom/android/camera/module/CameraModule$MainHandler;
.super Landroid/os/Handler;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 583
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    return-void

    .line 591
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const-wide/16 v2, 0x12c

    const/16 v4, 0x80

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 979
    :pswitch_1
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "Oops, Super Night capture timeout later release timeout!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$3100(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_5

    .line 970
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$3000(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1c

    .line 971
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 972
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "Bind Lens service: E"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V

    .line 974
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v10}, Lcom/android/camera/module/CameraModule;->access$3002(Lcom/android/camera/module/CameraModule;Z)Z

    .line 975
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "Bind Lens service: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 963
    :pswitch_3
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->isBackBokehOn()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 964
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const p1, 0x7f0f0060

    invoke-virtual {p0, v7, p1, v8}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_5

    .line 960
    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    goto/16 :goto_5

    .line 955
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 956
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1, v10}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 957
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v9, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    goto/16 :goto_5

    .line 949
    :pswitch_6
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2800(Lcom/android/camera/module/CameraModule;)V

    .line 952
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x30

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 945
    :pswitch_7
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->animatePortraitZoomBefore()V

    .line 946
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 937
    :pswitch_8
    iput-boolean v10, p0, Lcom/android/camera/module/CameraModule$MainHandler;->mAbandoned:Z

    .line 938
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz p1, :cond_1c

    .line 939
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 940
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-object v6, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    goto/16 :goto_5

    .line 909
    :pswitch_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 910
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const p1, 0x7f0f0072

    invoke-virtual {p0, v7, p1, v8}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_5

    .line 904
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/Thumbnail;

    .line 905
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0, p1, v10, v10}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto/16 :goto_5

    .line 896
    :pswitch_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 897
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->disableSwitchAnimationOnce()V

    .line 898
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    goto/16 :goto_5

    .line 887
    :pswitch_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 888
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 p1, 0x6

    const v0, 0x7f0f00e2

    invoke-virtual {p0, p1, v0, v8}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_5

    .line 882
    :pswitch_d
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_LYING_FLAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 876
    :pswitch_e
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "No continuous shot callback!"

    invoke-static {p1, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto/16 :goto_5

    .line 870
    :pswitch_f
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1, v10}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 871
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_5

    .line 865
    :pswitch_10
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_3

    move v0, v10

    goto :goto_0

    :cond_3
    move v0, v9

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_4

    move v9, v10

    :cond_4
    invoke-static {p0, v0, v9}, Lcom/android/camera/module/CameraModule;->access$2500(Lcom/android/camera/module/CameraModule;ZZ)V

    goto/16 :goto_5

    .line 845
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_5

    move v0, v10

    goto :goto_1

    :cond_5
    move v0, v9

    :goto_1
    if-eqz v0, :cond_7

    .line 847
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v0, :cond_6

    .line 848
    check-cast p1, Landroid/hardware/Camera$FaceDetectionListener;

    .line 849
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 851
    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v10, v10}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_5

    .line 853
    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-nez p1, :cond_8

    .line 855
    invoke-virtual {p0, v9, v10}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_5

    .line 858
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_5

    .line 840
    :pswitch_12
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;II)V

    goto/16 :goto_5

    .line 835
    :pswitch_13
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_5

    .line 830
    :pswitch_14
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$2200(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_5

    .line 820
    :pswitch_15
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 821
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_5

    .line 823
    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    .line 824
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 823
    invoke-virtual {p1, v6, v6, v6, v0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_5

    .line 812
    :pswitch_16
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x7

    .line 813
    invoke-virtual {p1, v0}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 814
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->onClick()V

    goto/16 :goto_5

    .line 694
    :pswitch_17
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1000(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 695
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1, v9}, Lcom/android/camera/module/CameraModule;->access$1002(Lcom/android/camera/module/CameraModule;Z)Z

    .line 696
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result p1

    if-nez p1, :cond_a

    .line 697
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 699
    :cond_a
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1, v10}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 701
    :cond_b
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 702
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1200(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraAppImpl;->isMainIntentActivityLaunched()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 703
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "should not do later release to avoid release the camera hold by main activity"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 705
    :cond_c
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    goto/16 :goto_5

    .line 802
    :pswitch_18
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->isBusy()Z

    move-result p1

    if-nez p1, :cond_d

    .line 803
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    goto/16 :goto_5

    .line 805
    :cond_d
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x19

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 786
    :pswitch_19
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 787
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v10, v10}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;ZZ)V

    .line 789
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-nez v0, :cond_e

    .line 790
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v9}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 791
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$1900(Lcom/android/camera/module/CameraModule;)V

    .line 794
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 795
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 796
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->access$1102(Lcom/android/camera/module/CameraModule;J)J

    goto/16 :goto_5

    .line 781
    :pswitch_1a
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->showObjectTrackHint()V

    goto/16 :goto_5

    .line 757
    :pswitch_1b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_f

    .line 758
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 759
    iget v1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v1, v10

    iput v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 760
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 761
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v1}, Lcom/android/camera/AudioCaptureManager;->setDelayStep(I)V

    .line 762
    iget p1, v0, Landroid/os/Message;->arg2:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 767
    iget p1, v0, Landroid/os/Message;->arg1:I

    if-ge p1, v7, :cond_1c

    .line 768
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto/16 :goto_5

    .line 772
    :cond_f
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 773
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 774
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 776
    :cond_10
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->access$1700(Lcom/android/camera/module/CameraModule;J)V

    goto/16 :goto_5

    .line 745
    :pswitch_1c
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_11

    .line 746
    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1500(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 747
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v9, p1, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    goto :goto_2

    .line 748
    :cond_11
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isSquareModeChange()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 749
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1500(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 751
    :cond_12
    :goto_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 752
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v9, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    goto/16 :goto_5

    .line 600
    :pswitch_1d
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 603
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 918
    :pswitch_1e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p1, :cond_13

    return-void

    .line 923
    :cond_13
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    .line 924
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 925
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->conflictWithBeauty(Z)V

    :cond_14
    if-eqz v0, :cond_15

    .line 927
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result p1

    if-nez p1, :cond_15

    .line 928
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;)V

    goto :goto_3

    :cond_15
    if-nez v0, :cond_16

    .line 929
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 930
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$2700(Lcom/android/camera/module/CameraModule;)V

    .line 931
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 933
    :cond_16
    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto/16 :goto_5

    .line 712
    :pswitch_1f
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 715
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1, v10, v5}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 716
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    .line 717
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v9, v9}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 719
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1c

    .line 721
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert()V

    goto/16 :goto_5

    .line 724
    :cond_17
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1400(Lcom/android/camera/module/CameraModule;)I

    move-result p1

    if-ge p1, v1, :cond_1c

    .line 725
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1408(Lcom/android/camera/module/CameraModule;)I

    .line 726
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry do-capture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1400(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xf

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 678
    :pswitch_20
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget p1, p1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq p1, v5, :cond_1b

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_4

    .line 680
    :cond_18
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget p1, p1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq p1, v5, :cond_1c

    .line 682
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$1100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 684
    :cond_19
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 685
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 687
    :cond_1a
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0, v10}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    goto/16 :goto_5

    .line 679
    :cond_1b
    :goto_4
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v10}, Lcom/android/camera/module/CameraModule;->access$1002(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_5

    .line 658
    :pswitch_21
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    goto/16 :goto_5

    .line 673
    :pswitch_22
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_5

    .line 653
    :pswitch_23
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$900(Lcom/android/camera/module/CameraModule;)V

    goto :goto_5

    .line 648
    :pswitch_24
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    goto :goto_5

    .line 740
    :pswitch_25
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto :goto_5

    .line 643
    :pswitch_26
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$800(Lcom/android/camera/module/CameraModule;)V

    goto :goto_5

    .line 636
    :pswitch_27
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v10, p1, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 637
    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    .line 638
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_5

    .line 625
    :pswitch_28
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gez p1, :cond_1c

    .line 630
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 615
    :pswitch_29
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_5

    .line 594
    :pswitch_2a
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_5

    .line 608
    :pswitch_2b
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 609
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    :cond_1c
    :goto_5
    :pswitch_2c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_2c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
