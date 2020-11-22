.class Lcom/android/camera/SensorStateManager$2;
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
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/android/camera/SensorStateManager;->access$802(Lcom/android/camera/SensorStateManager;[F)[F

    return-void
.end method
