.class final Lcom/android/camera/module/CameraModule$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    .line 1254
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/camera/module/CameraModule;->access$3702(Lcom/android/camera/module/CameraModule;J)J

    .line 1255
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShutterToPostViewCallbackTime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1256
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1255
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
