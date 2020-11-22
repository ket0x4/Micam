.class Lcom/android/camera/ui/PortraitButton$1;
.super Landroid/os/Handler;
.source "PortraitButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PortraitButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PortraitButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PortraitButton;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    invoke-static {p0}, Lcom/android/camera/ui/PortraitButton;->access$000(Lcom/android/camera/ui/PortraitButton;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    return-void
.end method
