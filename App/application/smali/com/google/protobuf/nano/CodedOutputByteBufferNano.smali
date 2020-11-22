.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

.field private codedOutputStreamPosition:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 70
    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    .line 65
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 673
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static computeInt32Size(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 634
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 801
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 681
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 836
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    .line 837
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 665
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 825
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result p0

    .line 826
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeTagSize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    const/4 v0, 0x0

    .line 972
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method private static encode(Ljava/lang/CharSequence;[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequence",
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 482
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p2

    if-ge v3, p3, :cond_0

    .line 488
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    .line 489
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p2, v0

    return p2

    :cond_1
    add-int/2addr p2, v1

    :goto_1
    if-ge v1, v0, :cond_9

    .line 496
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p2, p3, :cond_2

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    .line 498
    aput-byte v3, p1, p2

    :goto_2
    move p2, v4

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 500
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 501
    aput-byte v3, p1, v4

    goto :goto_3

    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_5

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 504
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 505
    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 506
    aput-byte v3, p1, p2

    goto :goto_2

    :cond_5
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 511
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 514
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 515
    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 516
    aput-byte v5, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 517
    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 518
    aput-byte v1, p1, v3

    move v1, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 512
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v1, -0x1

    const/16 p1, 0x27

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unpaired surrogate at index "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 520
    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x25

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return p2
.end method

.method private static encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "byteBuffer"
        }
    .end annotation

    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 436
    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p0

    .line 441
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 443
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 444
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    throw p1

    .line 448
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    .line 432
    :cond_1
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method private static encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "byteBuffer"
        }
    .end annotation

    .line 453
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 455
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    .line 457
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 459
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 460
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 468
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 469
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 472
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 473
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 474
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 475
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 476
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v4

    .line 470
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v1, -0x1

    const/16 p1, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unpaired surrogate at index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 463
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 464
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 465
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static encodedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 363
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 374
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-lt v2, v0, :cond_3

    return v2

    .line 385
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v2

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "start"
        }
    .end annotation

    .line 392
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 395
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 403
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    .line 99
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    sub-int/2addr v3, v4

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->write([BII)V

    .line 104
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 106
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    return-object p0
.end method

.method public static newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flatArray"
        }
    .end annotation

    .line 79
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "flatArray",
            "offset",
            "length"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 3

    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 896
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Did not write as much data as expected, %s bytes remaining."

    .line 897
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft()I
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    return p0
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 536
    invoke-interface {p1, v0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 537
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 538
    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 550
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 551
    invoke-interface {p1, v0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 552
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 553
    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 544
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeRawByte(B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 939
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public writeRawByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 947
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 958
    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 961
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 985
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    .line 1007
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 1010
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 331
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 336
    iget-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 337
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    .line 338
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 339
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 332
    :cond_0
    new-instance p1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1

    .line 341
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 342
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 345
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 347
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 348
    throw v0
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method
