.class public final enum Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
.super Ljava/lang/Enum;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FBLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 605
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 604
    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .locals 1

    .line 604
    const-class v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .locals 1

    .line 604
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    invoke-virtual {v0}, [Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-object v0
.end method
