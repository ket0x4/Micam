.class Lcom/android/camera/snap/SnapCamera$1;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/16 v0, 0x87

    const/16 v1, 0x2d

    if-gt v1, p1, :cond_0

    if-ge p1, v0, :cond_0

    const/16 p1, 0xb4

    goto :goto_0

    :cond_0
    const/16 v1, 0xe1

    if-gt v0, p1, :cond_1

    if-ge p1, v1, :cond_1

    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    if-gt v1, p1, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    .line 231
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$000(Lcom/android/camera/snap/SnapCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 233
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    rsub-int p1, p1, 0x168

    .line 234
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 236
    :cond_3
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 239
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$100(Lcom/android/camera/snap/SnapCamera;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 243
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0, p1}, Lcom/android/camera/snap/SnapCamera;->updateCameraOrientation(I)V

    .line 244
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p0, p1}, Lcom/android/camera/snap/SnapCamera;->access$102(Lcom/android/camera/snap/SnapCamera;I)I

    :cond_5
    return-void
.end method
