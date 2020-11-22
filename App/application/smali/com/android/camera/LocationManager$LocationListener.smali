.class Lcom/android/camera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 274
    iput-object p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 275
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 280
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$200(Lcom/android/camera/LocationManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    const-string v2, "LocationManager"

    if-nez v0, :cond_2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got first location, it is from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update location, it is from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 299
    iget-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/android/camera/LocationManager;->access$500(Lcom/android/camera/LocationManager;Landroid/location/Location;)V

    .line 300
    iput-boolean v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 317
    iput-boolean p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 318
    iget-object p3, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {p3}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {p3}, Lcom/android/camera/LocationManager;->access$200(Lcom/android/camera/LocationManager;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "gps"

    .line 319
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 320
    iget-object p0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {p0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    :cond_1
    :goto_0
    return-void
.end method
