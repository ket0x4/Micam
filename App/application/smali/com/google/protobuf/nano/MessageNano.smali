.class public abstract Lcom/google/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "msg",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    return-object p0
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "data",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    const/4 p2, 0x0

    .line 136
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 141
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 139
    throw p0
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 209
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/MessageNano;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 59
    :cond_0
    iget p0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return p0
.end method

.method public getSerializedSize()I
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 68
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 203
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
