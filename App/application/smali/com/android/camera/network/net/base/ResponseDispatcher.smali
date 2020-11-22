.class public Lcom/android/camera/network/net/base/ResponseDispatcher;
.super Ljava/lang/Object;
.source "ResponseDispatcher.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/net/base/ResponseListener;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    .line 17
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/camera/network/net/base/ResponseListener;->onResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object p1, Lcom/android/camera/network/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    if-eqz p0, :cond_0

    .line 53
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseListener;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
