.class Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;
.super Ljava/lang/Object;
.source "MmsdkCallbackImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MmsdkCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MmsdkCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/MmsdkCallbackImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;->this$0:Lcom/android/camera/MmsdkCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/MmsdkCallbackImpl;Lcom/android/camera/MmsdkCallbackImpl$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSaveDone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    array-length p1, p3

    if-lez p1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;->this$0:Lcom/android/camera/MmsdkCallbackImpl;

    invoke-static {p0}, Lcom/android/camera/MmsdkCallbackImpl;->access$200(Lcom/android/camera/MmsdkCallbackImpl;)Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;->onProcessDone(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
