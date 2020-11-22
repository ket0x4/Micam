.class public Lcom/android/camera/MmsdkCallbackImpl;
.super Ljava/lang/Object;
.source "MmsdkCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;,
        Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;,
        Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbackListener:Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

.field private mContext:Landroid/content/Context;

.field private mMmsdkCallbackClient:Ljava/lang/Object;

.field private mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MmsdkCallbackImpl"

    .line 17
    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl;Lcom/android/camera/MmsdkCallbackImpl$1;)V

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mCallbackListener:Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

    .line 23
    new-instance v0, Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;

    invoke-direct {v0, v1}, Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl$1;)V

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    .line 46
    iput-object p1, p0, Lcom/android/camera/MmsdkCallbackImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/MmsdkCallbackImpl;)Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 5

    :try_start_0
    const-string v0, "com.mediatek.mmsdk.callback.MmsdkCallbackClient"

    .line 51
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 52
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lcom/android/camera/MmsdkCallbackImpl;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchMethodException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string v2, "ClassNotFoundException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :catch_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "init mmsdk callback failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isMmsdkCallbackSupported()Z
    .locals 4

    const/4 v0, 0x0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isCallbackClientSupported"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    iget-object v2, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 80
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string v2, "[IllegalAccessException]"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 78
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string v2, "[InvocationTargetException]"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 76
    iget-object p0, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string v2, "[NoSuchMethodException]"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
