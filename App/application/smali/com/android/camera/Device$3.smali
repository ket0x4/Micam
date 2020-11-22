.class Lcom/android/camera/Device$3;
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

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .line 777
    invoke-static {}, Lcom/android/camera/Device;->supportPictureWaterMark()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "camera_picture_watermark_default"

    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
