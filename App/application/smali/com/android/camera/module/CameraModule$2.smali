.class Lcom/android/camera/module/CameraModule$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1186
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "on Receive xiaoai broadcast action intent"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1188
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3200(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/voiceassist/XiaoAiHelper;->isActionFromXiaoAi(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v1, Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-direct {v1, p2}, Lcom/android/camera/voiceassist/XiaoAiHelper;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    const/4 v0, -0x1

    .line 1193
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6a63cfa0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.android.camera.action.XIAOAI_CONTROL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 1195
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$2;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, p2}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method
