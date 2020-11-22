.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 191
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    .line 437
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 434
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 430
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 272
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_3

    .line 422
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    goto/16 :goto_3

    .line 416
    :pswitch_5
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_3

    :catch_0
    move-exception v2

    .line 418
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 412
    :pswitch_6
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBurstShotSpeed(Landroid/hardware/Camera;I)V

    goto/16 :goto_3

    .line 409
    :pswitch_7
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->isPreviewEnabled(Landroid/hardware/Camera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$1102(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_3

    .line 383
    :pswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFocusSuccessful(Landroid/hardware/Camera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$902(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_3

    .line 406
    :pswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    goto/16 :goto_3

    .line 403
    :pswitch_a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->stopObjectTrack(Landroid/hardware/Camera;)V

    goto/16 :goto_3

    .line 398
    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    .line 399
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v4

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v3

    iget v3, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v3

    .line 400
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v8, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v9, v2

    .line 399
    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/hardware/CameraHardwareProxy;->startObjectTrack(Landroid/hardware/Camera;IIII)V

    goto/16 :goto_3

    .line 392
    :pswitch_c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setLongshotMode(Landroid/hardware/Camera;Z)V

    goto/16 :goto_3

    .line 386
    :pswitch_d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->cancelContinuousMode(Landroid/hardware/Camera;)V

    goto/16 :goto_3

    .line 389
    :pswitch_e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$1002(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_3

    :pswitch_f
    const-string v2, "CameraManager"

    const-string v4, "startPreview"

    .line 330
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 335
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_3

    .line 377
    :pswitch_10
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_3

    .line 374
    :pswitch_11
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_3

    .line 395
    :pswitch_12
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-void

    :pswitch_13
    const-string v2, "getParameters failed (empty parameters)"
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_8

    .line 359
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v5, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v5}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/CameraManager;->access$702(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    .line 362
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    move v3, v4

    goto :goto_0

    .line 366
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :pswitch_14
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_3

    .line 342
    :pswitch_15
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_3

    .line 323
    :pswitch_16
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :try_start_6
    const-string v3, "CameraManager"

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopFaceDetection failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_3

    .line 315
    :pswitch_17
    :try_start_7
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v2

    :try_start_8
    const-string v3, "CameraManager"

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFaceDetection failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 310
    :pswitch_18
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_3

    .line 306
    :pswitch_19
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_3

    .line 302
    :pswitch_1a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_3

    .line 298
    :pswitch_1b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_3

    :pswitch_1c
    const-string v2, "cancelAutoFocus failed"
    :try_end_8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    .line 286
    :try_start_9
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v3

    .line 288
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 291
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :pswitch_1d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_3

    .line 276
    :pswitch_1e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_3

    .line 268
    :pswitch_1f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_3

    :pswitch_20
    const-string v2, "CameraManager"

    const-string v3, "stopPreview"

    .line 256
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 264
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2, v1}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_3

    :pswitch_21
    const-string v2, "CameraManager"

    const-string v4, "startPreviewASYNC"

    .line 250
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 252
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;I)I
    :try_end_a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    return-void

    :pswitch_22
    :try_start_b
    const-string v2, "CameraManager"

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_3

    :catch_5
    move-exception v2

    .line 245
    :try_start_c
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 237
    :pswitch_23
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    goto/16 :goto_3

    .line 233
    :pswitch_24
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_3

    .line 223
    :pswitch_25
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2, v0}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    .line 225
    :try_start_d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    .line 226
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2, v1}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;I)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_3

    :catch_6
    move-exception v2

    .line 228
    :try_start_e
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3, v2}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto/16 :goto_3

    .line 208
    :pswitch_26
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    monitor-enter v2
    :try_end_e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    .line 212
    :try_start_f
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 216
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;I)I

    .line 217
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3, v0}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 218
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3, v0}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 219
    monitor-exit v2

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v3

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$802(Lcom/android/camera/CameraManager;Z)Z
    :try_end_10
    .catch Ljava/util/ConcurrentModificationException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v2

    const/4 v3, 0x0

    .line 445
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 446
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_4

    :try_start_11
    const-string p1, "CameraManager"

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera hardware state test, use getParameters, msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    const-string p1, "CameraManager"

    const-string v4, "camera hardware state is normal"

    .line 450
    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_1

    :catch_8
    move-exception p1

    const-string v3, "CameraManager"

    const-string v4, "camera hardware crashed "

    .line 452
    invoke-static {v3, v4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v1

    .line 457
    :cond_4
    :goto_1
    :try_start_12
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_2

    :catch_9
    move-exception p1

    const-string v3, "CameraManager"

    const-string v4, "Fail to release the camera."

    .line 459
    invoke-static {v3, v4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    .line 463
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->notifyHardwareError()V

    .line 465
    :cond_5
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 466
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 468
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception in camerahandler, mHoldException="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_3

    .line 470
    :cond_7
    throw v2

    :catch_a
    move-exception p1

    .line 441
    invoke-virtual {p1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConcurrentModificationException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_8
    :goto_3
    :pswitch_27
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 192
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error!!! Camera is already released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_27
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method
