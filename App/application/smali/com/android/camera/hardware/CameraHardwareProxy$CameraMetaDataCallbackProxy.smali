.class Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardwareProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraMetaDataCallbackProxy"
.end annotation


# instance fields
.field private mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 328
    iget-object p1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCameraMetaData"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, [B

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Landroid/hardware/Camera;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
