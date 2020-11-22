.class Lcom/android/camera/module/CameraModule$17;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->startAEDetect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "[B",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 7463
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$17;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([B)Ljava/lang/Boolean;
    .locals 0

    .line 7466
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$17;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/CameraModule;->access$8600(Lcom/android/camera/module/CameraModule;[B)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7463
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$17;->apply([B)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
