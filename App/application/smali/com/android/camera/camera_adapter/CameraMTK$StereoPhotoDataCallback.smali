.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
.super Ljava/lang/Object;
.source "CameraMTK.java"

# interfaces
.implements Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StereoPhotoDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method private constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$1;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method


# virtual methods
.method public onClearImageCapture([B)V
    .locals 3

    .line 896
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClearImageCapture clearImageData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 898
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " clearImage data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 901
    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearImageCapture clearImageData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2102(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 903
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onDepthMapCapture([B)V
    .locals 3

    .line 885
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDepthMapCapture depthData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 887
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "depth data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 890
    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDepthMapCapture depthData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2002(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 892
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onJpsCapture([B)V
    .locals 3

    if-nez p1, :cond_0

    .line 865
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JPS data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 868
    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpsCapture jpsData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1702(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 870
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onLdcCapture([B)V
    .locals 3

    .line 907
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLdcCapture ldcData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 909
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " ldc data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 912
    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLdcCapture ldcData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2202(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 914
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onMaskCapture([B)V
    .locals 3

    if-nez p1, :cond_0

    .line 875
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mask data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 878
    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMaskCapture maskData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1802(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 880
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1800(Lcom/android/camera/camera_adapter/CameraMTK;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1900(Lcom/android/camera/camera_adapter/CameraMTK;[B)V

    .line 881
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method
