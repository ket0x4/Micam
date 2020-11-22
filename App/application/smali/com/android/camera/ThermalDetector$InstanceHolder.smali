.class Lcom/android/camera/ThermalDetector$InstanceHolder;
.super Ljava/lang/Object;
.source "ThermalDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThermalDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/android/camera/ThermalDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/camera/ThermalDetector;

    invoke-direct {v0}, Lcom/android/camera/ThermalDetector;-><init>()V

    sput-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/ThermalDetector;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-object v0
.end method
