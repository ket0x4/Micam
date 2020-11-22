.class Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;
.super Ljava/lang/Object;
.source "MTKCameraProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameNameCallbackProxy"
.end annotation


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mRealCallbackImpl:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mRealCallbackImpl:Ljava/lang/Object;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mClazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mClazz:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTKCameraProxy"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mRealCallbackImpl:Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 442
    iget-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mClazz:Ljava/lang/Class;

    .line 444
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 442
    invoke-static {p1, v0, v1, p2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    iget-object p2, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mClazz:Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;->mRealCallbackImpl:Ljava/lang/Object;

    invoke-virtual {p1, p2, p0, p3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
