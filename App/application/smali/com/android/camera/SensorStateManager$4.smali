.class Lcom/android/camera/SensorStateManager$4;
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
    name = null
.end annotation


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 1

    .line 491
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 498
    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    new-array p1, p1, [F

    .line 499
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .locals 3

    const/4 v0, 0x0

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 554
    aput v2, v1, v0

    .line 555
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 561
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
    .locals 9

    .line 503
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1400(Lcom/android/camera/SensorStateManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1500(Lcom/android/camera/SensorStateManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$800(Lcom/android/camera/SensorStateManager;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v3}, Lcom/android/camera/SensorStateManager;->access$1600(Lcom/android/camera/SensorStateManager;[F)[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/SensorStateManager;->access$900(Lcom/android/camera/SensorStateManager;J[F)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-static {v0, v1}, Lcom/android/camera/SensorStateManager;->access$802(Lcom/android/camera/SensorStateManager;[F)[F

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v1

    const v6, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 515
    aget v5, v0, v2

    mul-float/2addr v5, v3

    aget v7, v4, v2

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    aput v5, v0, v2

    const/4 v5, 0x2

    .line 516
    aget v7, v0, v5

    mul-float/2addr v7, v3

    aget v3, v4, v5

    mul-float/2addr v3, v6

    add-float/2addr v7, v3

    aput v7, v0, v5

    .line 517
    iget-object v3, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v4, v3, v1

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v4, v6

    aget v7, v0, v1

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v1

    .line 518
    aget v4, v3, v2

    mul-float/2addr v4, v6

    aget v7, v0, v2

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v2

    .line 519
    aget v4, v3, v5

    mul-float/2addr v4, v6

    aget v0, v0, v5

    mul-float/2addr v0, v8

    add-float/2addr v4, v0

    aput v4, v3, v5

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalFilter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " event.values="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorStateManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x40800000    # -1.0f

    .line 525
    iget-object v3, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v1, v3, v1

    neg-float v1, v1

    .line 526
    aget v2, v3, v2

    neg-float v2, v2

    .line 527
    aget v3, v3, v5

    neg-float v3, v3

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v3, v3

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_3

    const p1, 0x42652ee1

    neg-float v2, v2

    float-to-double v2, v2

    float-to-double v4, v1

    .line 532
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr p1, v1

    .line 535
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1, p1}, Lcom/android/camera/SensorStateManager;->access$1700(Lcom/android/camera/SensorStateManager;F)F

    move-result p1

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_5

    .line 539
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 540
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$4;->clearFilter()V

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1, p1}, Lcom/android/camera/SensorStateManager;->access$1302(Lcom/android/camera/SensorStateManager;F)F

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mIsLying="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    .line 544
    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 547
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p0}, Lcom/android/camera/SensorStateManager;->access$1000(Lcom/android/camera/SensorStateManager;)Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_5
    return-void
.end method
