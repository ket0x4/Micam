.class Lcom/android/camera/module/CameraModule$18;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


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
        "Lio/reactivex/FlowableOnSubscribe<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 7456
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$18;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "[B>;)V"
        }
    .end annotation

    .line 7459
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$18;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/CameraModule;->access$8002(Lcom/android/camera/module/CameraModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
