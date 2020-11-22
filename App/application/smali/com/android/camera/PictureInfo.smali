.class public Lcom/android/camera/PictureInfo;
.super Ljava/lang/Object;
.source "PictureInfo.java"


# instance fields
.field private mInfo:Lorg/json/JSONObject;

.field private mSensorType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rear"

    .line 18
    iput-object v0, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public setMirror(Z)V
    .locals 1

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v0, "mirror"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CAM_PictureInfo"

    const-string v0, "setMirror JSONException occurs "

    .line 39
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSensorType(I)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "front"

    goto :goto_0

    :cond_0
    const-string p1, "rear"

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v0, "sensor_type"

    iget-object p0, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "CAM_PictureInfo"

    const-string v0, "setSensorType JSONException occurs "

    .line 31
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
