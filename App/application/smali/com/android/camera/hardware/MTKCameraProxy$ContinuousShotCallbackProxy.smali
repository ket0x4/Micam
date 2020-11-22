.class Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;
.super Ljava/lang/Object;
.source "MTKCameraProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotCallbackProxy"
.end annotation


# instance fields
.field private mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field final synthetic this$0:Lcom/android/camera/hardware/MTKCameraProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCameraProxy;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->this$0:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

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

    .line 171
    iget-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onConinuousShotDone"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;->onContinuousShotDone(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
