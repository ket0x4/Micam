.class final Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;
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
    name = "JpegQuickShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 2094
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 2094
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .line 2097
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$3402(Lcom/android/camera/module/CameraModule;J)J

    .line 2098
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 2099
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickShutterCallback mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$6800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->access$7000(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    return-void
.end method
