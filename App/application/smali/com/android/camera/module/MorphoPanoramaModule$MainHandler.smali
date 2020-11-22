.class Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
.super Landroid/os/Handler;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    return-void

    .line 251
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    const/16 v2, 0x80

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 259
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 262
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 307
    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$600(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$700(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    goto/16 :goto_0

    .line 301
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 302
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 290
    :pswitch_3
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 296
    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$500(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto/16 :goto_0

    .line 279
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    const/4 p1, 0x2

    const-wide/16 v2, 0x64

    .line 280
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result p1

    .line 282
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v2, v0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq p1, v2, :cond_2

    .line 283
    iput p1, v0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$400(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 286
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 274
    :pswitch_6
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 275
    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result p1

    .line 274
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    .line 276
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$300(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto :goto_0

    .line 271
    :pswitch_7
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_0

    .line 267
    :pswitch_8
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 268
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 253
    :pswitch_9
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 311
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->mAbandoned:Z

    .line 312
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz p1, :cond_4

    .line 313
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 314
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
