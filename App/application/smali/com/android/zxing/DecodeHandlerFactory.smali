.class final Lcom/android/zxing/DecodeHandlerFactory;
.super Ljava/lang/Object;
.source "DecodeHandlerFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/zxing/DecodeHandler;

.field private final mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mHints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    .line 24
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 25
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    .line 27
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 28
    sget-object v0, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 30
    sget-object p2, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 31
    sget-object p2, Lcom/android/zxing/DecodeFormats;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/zxing/DecodeHandler;
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    iget-object p0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    return-object p0
.end method

.method public quit()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->cancel()V

    .line 53
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public start()V
    .locals 4

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DecodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Lcom/android/zxing/DecodeHandler;

    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/zxing/DecodeHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    .line 48
    iget-object p0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
