.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->resumeCurrentMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/BaseModule;",
        ">;",
        "Ljava/lang/Boolean;",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/BaseModule;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;Ljava/lang/Boolean;)Lcom/android/camera/module/loader/NullHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera$6;->apply(Lcom/android/camera/module/loader/NullHolder;Ljava/lang/Boolean;)Lcom/android/camera/module/loader/NullHolder;

    return-object p1
.end method
