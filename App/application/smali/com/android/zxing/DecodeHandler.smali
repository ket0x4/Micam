.class final Lcom/android/zxing/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private mCancel:Z

.field private final mContext:Landroid/content/Context;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    iput-object p1, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    .line 26
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 27
    iget-object p0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0, p3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private decode([BII)V
    .locals 7

    .line 46
    iget-boolean v0, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v0, :cond_9

    mul-int v0, p2, p3

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    array-length v3, p1

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 48
    :cond_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p3, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_1

    mul-int v5, v4, p3

    add-int/2addr v5, p3

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    mul-int v6, v2, p2

    add-int/2addr v6, v4

    .line 51
    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v2, 0x0

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_8

    .line 66
    iget-boolean v4, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v4, :cond_4

    return-void

    .line 67
    :cond_4
    iget-object v4, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v4

    if-nez p1, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-virtual {v4, v0, p3, p2, v5}, Lcom/android/zxing/QRCodeManager;->buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 72
    :cond_6
    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v4, v5}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 78
    iget-object p0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_0
    :goto_4
    iget-object v4, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v4}, Lcom/google/zxing/MultiFormatReader;->reset()V

    if-eqz v2, :cond_3

    .line 81
    iget-boolean p1, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz p1, :cond_7

    return-void

    .line 82
    :cond_7
    iget-object p0, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const p1, 0x7f09004e

    .line 83
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 88
    :cond_8
    iget-boolean p1, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez p1, :cond_9

    .line 89
    iget-object p0, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_9

    const p1, 0x7f090036

    .line 91
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090034

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/zxing/DecodeHandler;->decode([BII)V

    :goto_0
    return-void
.end method
