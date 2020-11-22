.class Lcom/android/camera/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/android/camera/Device$PictureWatermarkDefaultValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .line 747
    sget-boolean p0, Lcom/android/camera/Device;->IS_E7S:Z

    if-eqz p0, :cond_1

    const-string p0, "ro.boot.hwc"

    .line 748
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 750
    invoke-static {}, Lcom/android/camera/Device;->supportPictureWaterMark()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "India"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
