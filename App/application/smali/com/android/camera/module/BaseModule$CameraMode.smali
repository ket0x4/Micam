.class public final enum Lcom/android/camera/module/BaseModule$CameraMode;
.super Ljava/lang/Enum;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/module/BaseModule$CameraMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/module/BaseModule$CameraMode;

.field public static final enum ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

.field public static final enum Normal:Lcom/android/camera/module/BaseModule$CameraMode;

.field public static final enum ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

.field public static final enum VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1028
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraMode;

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/camera/module/BaseModule$CameraMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    new-instance v0, Lcom/android/camera/module/BaseModule$CameraMode;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "ImageCapture"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/camera/module/BaseModule$CameraMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    new-instance v0, Lcom/android/camera/module/BaseModule$CameraMode;

    const/4 v4, 0x4

    const-string v5, "VideoCapture"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/camera/module/BaseModule$CameraMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    new-instance v0, Lcom/android/camera/module/BaseModule$CameraMode;

    const/4 v5, 0x3

    const-string v6, "ScanQRCode"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v5, v7}, Lcom/android/camera/module/BaseModule$CameraMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    new-array v0, v4, [Lcom/android/camera/module/BaseModule$CameraMode;

    .line 1027
    sget-object v4, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->$VALUES:[Lcom/android/camera/module/BaseModule$CameraMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1031
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1032
    iput p3, p0, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/module/BaseModule$CameraMode;
    .locals 1

    .line 1027
    const-class v0, Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule$CameraMode;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/module/BaseModule$CameraMode;
    .locals 1

    .line 1027
    sget-object v0, Lcom/android/camera/module/BaseModule$CameraMode;->$VALUES:[Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0}, [Lcom/android/camera/module/BaseModule$CameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/module/BaseModule$CameraMode;

    return-object v0
.end method
