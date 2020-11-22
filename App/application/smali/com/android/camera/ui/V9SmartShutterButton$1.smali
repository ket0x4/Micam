.class Lcom/android/camera/ui/V9SmartShutterButton$1;
.super Landroid/os/Handler;
.source "V9SmartShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V9SmartShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V9SmartShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V9SmartShutterButton;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V9SmartShutterButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->access$002(Lcom/android/camera/ui/V9SmartShutterButton;I)I

    .line 60
    iget-object p0, p0, Lcom/android/camera/ui/V9SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-static {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->access$100(Lcom/android/camera/ui/V9SmartShutterButton;)V

    :goto_0
    return-void
.end method
