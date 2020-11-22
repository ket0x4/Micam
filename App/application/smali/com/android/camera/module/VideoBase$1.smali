.class Lcom/android/camera/module/VideoBase$1;
.super Landroid/telephony/PhoneStateListener;
.source "VideoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1373
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$1;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$1;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1377
    invoke-static {}, Lcom/android/camera/module/VideoBase;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_OFFHOOK, so we call onStop here to stop recording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$1;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1380
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
