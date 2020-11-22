.class Lcom/android/camera/ui/V9EdgeShutterView$1;
.super Landroid/os/Handler;
.source "V9EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V9EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V9EdgeShutterView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$200(Lcom/android/camera/ui/V9EdgeShutterView;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$100(Lcom/android/camera/ui/V9EdgeShutterView;)V

    :goto_0
    return-void
.end method
