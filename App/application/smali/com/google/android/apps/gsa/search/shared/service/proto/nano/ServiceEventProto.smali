.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ServiceEventProto.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->bitField0_:I

    .line 52
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->eventId_:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
    .locals 1

    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    move-result-object p0

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 82
    iget p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->eventId_:I

    .line 83
    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getEventId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->eventId_:I

    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;
    .locals 2
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

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 98
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->eventId_:I

    .line 105
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->bitField0_:I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
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

    .line 72
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;->eventId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
