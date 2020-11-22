.class public Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardwareProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraHardwareFace"
.end annotation


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public beautyscore:F

.field public blinkDetected:I

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public prob:F

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I

.field public t2tStop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 276
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->id:I

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->leftEye:Landroid/graphics/Point;

    .line 278
    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rightEye:Landroid/graphics/Point;

    .line 279
    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->mouth:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileDegree:I

    .line 285
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileScore:I

    .line 286
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->blinkDetected:I

    .line 287
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceRecognised:I

    .line 288
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    .line 289
    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->t2tStop:I

    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 4

    .line 296
    array-length v0, p0

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v1, 0x0

    .line 297
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 298
    new-instance v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;-><init>()V

    aput-object v2, v0, v1

    .line 299
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    invoke-static {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V
    .locals 6

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 307
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 310
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
