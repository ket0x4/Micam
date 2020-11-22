.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 61
    new-instance p0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v3}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_1
    move-object v3, v2

    move-object v2, v0

    :goto_2
    if-nez v0, :cond_2

    const/4 v4, 0x1

    .line 75
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 77
    new-instance v4, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v4}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v4, p0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 81
    :cond_0
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :catch_5
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v2, :cond_1

    .line 88
    throw v2

    .line 91
    :cond_1
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_6
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz p2, :cond_4

    .line 100
    sget-object p0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultPointCallback;

    if-eqz p0, :cond_4

    .line 102
    array-length p2, v3

    :goto_5
    if-lt p1, p2, :cond_3

    goto :goto_6

    :cond_3
    aget-object v1, v3, p1

    .line 103
    invoke-interface {p0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 108
    :cond_4
    :goto_6
    new-instance p0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object p2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 110
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 112
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_5
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 116
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_6
    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
