.class Lcom/android/camera/MiuiCameraSound$2;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MiuiCameraSound;


# direct methods
.method constructor <init>(Lcom/android/camera/MiuiCameraSound;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound$2;->this$0:Lcom/android/camera/MiuiCameraSound;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/camera/MiuiCameraSound$2;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->access$002(Lcom/android/camera/MiuiCameraSound;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
