.class Lcom/android/camera/module/CameraModule$14;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 7485
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$14;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7485
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$14;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7488
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "wait ae stable timeout force capture"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7489
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$14;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$8500(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method
