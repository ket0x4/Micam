.class final enum Lcom/android/camera/module/CameraModule$MultiSnapStopState;
.super Ljava/lang/Enum;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MultiSnapStopState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/module/CameraModule$MultiSnapStopState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/module/CameraModule$MultiSnapStopState;

.field public static final enum NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

.field public static final enum REQUEST:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

.field public static final enum STOPPING:Lcom/android/camera/module/CameraModule$MultiSnapStopState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 413
    new-instance v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/module/CameraModule$MultiSnapStopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 418
    new-instance v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    const/4 v2, 0x1

    const-string v3, "REQUEST"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/module/CameraModule$MultiSnapStopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->REQUEST:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 423
    new-instance v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    const/4 v3, 0x2

    const-string v4, "STOPPING"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/module/CameraModule$MultiSnapStopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->STOPPING:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 409
    sget-object v4, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->REQUEST:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->STOPPING:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->$VALUES:[Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/module/CameraModule$MultiSnapStopState;
    .locals 1

    .line 409
    const-class v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/module/CameraModule$MultiSnapStopState;
    .locals 1

    .line 409
    sget-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->$VALUES:[Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    invoke-virtual {v0}, [Lcom/android/camera/module/CameraModule$MultiSnapStopState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    return-object v0
.end method
