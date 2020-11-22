.class Lcom/android/camera/snap/SnapCamera$2;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "_SNAP"

    .line 352
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v8

    .line 356
    iget-object v1, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$200(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;

    move-result-object v3

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    .line 362
    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)I

    move-result v10

    iget-object v1, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    .line 363
    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$400(Lcom/android/camera/snap/SnapCamera;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    .line 368
    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/PictureInfo;

    move-result-object v16

    move-object/from16 v9, p1

    .line 356
    invoke-static/range {v3 .. v16}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 374
    iget-object v2, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v2}, Lcom/android/camera/snap/SnapCamera;->access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v2}, Lcom/android/camera/snap/SnapCamera;->access$700(Lcom/android/camera/snap/SnapCamera;)V

    .line 376
    iget-object v2, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v2}, Lcom/android/camera/snap/SnapCamera;->access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 379
    :cond_0
    iget-object v1, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$800(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$800(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save picture failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
