.class Lcom/android/zxing/QRCodeManager$MyHandler;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xaf

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 157
    :sswitch_0
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;I)V

    goto/16 :goto_0

    .line 152
    :sswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 154
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/zxing/QRCodeManager;->access$302(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 144
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showQrCodeTip()V

    .line 145
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p1}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 p1, 0xfa0

    invoke-static {p0, p1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_0

    .line 163
    :sswitch_3
    iget-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)V

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exit decode qrcode for timeout, mResumeTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " now="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " decodetime="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/zxing/QRCodeManager;->access$1100()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QRCodeManager"

    .line 164
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090035 -> :sswitch_3
        0x7f090036 -> :sswitch_4
        0x7f09004e -> :sswitch_2
        0x7f09004f -> :sswitch_1
        0x7f0900f8 -> :sswitch_0
    .end sparse-switch
.end method
