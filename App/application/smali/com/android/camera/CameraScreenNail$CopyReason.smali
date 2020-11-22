.class public final enum Lcom/android/camera/CameraScreenNail$CopyReason;
.super Ljava/lang/Enum;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CopyReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/CameraScreenNail$CopyReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CameraScreenNail$CopyReason;

.field public static final enum CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

.field public static final enum PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 121
    new-instance v0, Lcom/android/camera/CameraScreenNail$CopyReason;

    const/4 v1, 0x0

    const-string v2, "CAMERA_SWITCH"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/CameraScreenNail$CopyReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    .line 122
    new-instance v0, Lcom/android/camera/CameraScreenNail$CopyReason;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT_ZOOM"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/CameraScreenNail$CopyReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/CameraScreenNail$CopyReason;

    .line 120
    sget-object v3, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->$VALUES:[Lcom/android/camera/CameraScreenNail$CopyReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CameraScreenNail$CopyReason;
    .locals 1

    .line 120
    const-class v0, Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/CameraScreenNail$CopyReason;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/CameraScreenNail$CopyReason;
    .locals 1

    .line 120
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->$VALUES:[Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-virtual {v0}, [Lcom/android/camera/CameraScreenNail$CopyReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CameraScreenNail$CopyReason;

    return-object v0
.end method
