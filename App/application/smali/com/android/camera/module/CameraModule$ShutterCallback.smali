.class final Lcom/android/camera/module/CameraModule$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .line 1231
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$3402(Lcom/android/camera/module/CameraModule;J)J

    .line 1232
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 1233
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->enableFakeThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "requestReadPixels"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    goto :goto_0

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xac

    if-eq v1, v2, :cond_1

    .line 1240
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3500(Lcom/android/camera/module/CameraModule;)V

    .line 1244
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3600(Lcom/android/camera/module/CameraModule;)V

    .line 1246
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;ZZ)V

    return-void
.end method
