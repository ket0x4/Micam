.class Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationSensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onAccuracyChanged accuracy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorStateManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 434
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 437
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    .line 438
    aget p1, p1, v3

    .line 439
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 440
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 442
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    add-int/lit8 v8, v6, 0x1a

    rsub-int v6, v6, 0x99

    int-to-float v8, v8

    cmpg-float v9, v4, v8

    if-lez v9, :cond_2

    int-to-float v9, v6

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_3

    :cond_2
    cmpg-float v8, v5, v8

    if-lez v8, :cond_4

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v1

    :goto_2
    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    if-eqz v6, :cond_8

    sub-float v10, v4, v5

    .line 447
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    cmpl-float v10, v4, v5

    if-lez v10, :cond_6

    cmpg-float v0, v2, v9

    if-gez v0, :cond_5

    move v0, v9

    goto :goto_3

    :cond_5
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_3

    :cond_6
    cmpg-float v2, v4, v5

    if-gez v2, :cond_8

    cmpg-float v0, p1, v9

    if-gez v0, :cond_7

    move v0, v8

    goto :goto_3

    :cond_7
    const/high16 v0, 0x43870000    # 270.0f

    :cond_8
    :goto_3
    sub-float/2addr v5, v8

    .line 456
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Lcom/android/camera/SensorStateManager;->access$1100()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a

    .line 457
    iget-object v2, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    cmpg-float p1, p1, v9

    if-gez p1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v3

    :goto_4
    invoke-static {v2, v1}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;I)V

    goto :goto_5

    .line 459
    :cond_a
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1, v7}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;I)V

    .line 462
    :goto_5
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result p1

    if-ne v6, p1, :cond_b

    if-eqz v6, :cond_d

    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_d

    .line 463
    :cond_b
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1, v6}, Lcom/android/camera/SensorStateManager;->access$1002(Lcom/android/camera/SensorStateManager;Z)Z

    .line 464
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 465
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1, v0}, Lcom/android/camera/SensorStateManager;->access$1302(Lcom/android/camera/SensorStateManager;F)F

    .line 466
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SensorEventListenerImpl TYPE_ORIENTATION mOrientation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mIsLying="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    .line 467
    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorStateManager"

    .line 466
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 470
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p0}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_d
    return-void
.end method
