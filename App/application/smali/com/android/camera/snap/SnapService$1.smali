.class Lcom/android/camera/snap/SnapService$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapService;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    const/16 p1, 0x1a

    const/4 p2, 0x0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    return-void
.end method
