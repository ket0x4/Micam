.class Lcom/android/zxing/ui/QRCodeFragmentLayout$1;
.super Ljava/lang/Object;
.source "QRCodeFragmentLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/ui/QRCodeFragmentLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 68
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 69
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {p1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->access$000(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f080029

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {p1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->access$000(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f080028

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->access$000(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void
.end method
