.class Lcom/android/zxing/QRCodeManager$1;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/QRCodeManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 84
    iget-object p2, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p2}, Lcom/android/zxing/QRCodeManager;->access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 85
    iget-object p2, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p2}, Lcom/android/zxing/QRCodeManager;->access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object p2

    const v0, 0x7f090034

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p2, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p2}, Lcom/android/zxing/QRCodeManager;->access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    .line 87
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$100(Lcom/android/zxing/QRCodeManager;)I

    move-result v1

    iget-object p0, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->access$200(Lcom/android/zxing/QRCodeManager;)I

    move-result p0

    invoke-virtual {p2, v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
