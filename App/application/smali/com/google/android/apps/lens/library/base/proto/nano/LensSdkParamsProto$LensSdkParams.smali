.class public final Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LensSdkParamsProto.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public agsaVersionName:Ljava/lang/String;

.field public arStickersAvailabilityStatus:I

.field public lensAvailabilityStatus:I

.field public lensSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clear()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    return-void
.end method

.method public static checkLensAvailabilityStatusOrThrow(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    return p0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum LensAvailabilityStatus"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 2

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 92
    iput v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 94
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 1

    .line 101
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 103
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

    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

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

    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

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

    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object p0

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 129
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 131
    iget-object v3, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    .line 132
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    .line 136
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_1
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    .line 140
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_2
    iget p0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    if-eq p0, v2, :cond_3

    const/4 v1, 0x4

    .line 144
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 3
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

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 159
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->checkLensAvailabilityStatusOrThrow(I)I

    iput v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 175
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->checkLensAvailabilityStatusOrThrow(I)I

    iput v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    goto :goto_0

    :cond_5
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

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
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

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 113
    iget-object v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_1
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    .line 119
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 121
    :cond_2
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    .line 122
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 124
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
