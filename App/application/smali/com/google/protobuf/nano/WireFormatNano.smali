.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 64
    invoke-static {v1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v2

    sput v2, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    .line 66
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v1

    sput v1, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    sput v3, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 70
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    new-array v0, v2, [I

    .line 90
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v0, v2, [J

    .line 91
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v0, v2, [F

    .line 92
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v2, [D

    .line 93
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v2, [Z

    .line 94
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v2, [Ljava/lang/String;

    .line 95
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v2, [[B

    .line 96
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v2, [B

    .line 97
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static getTagWireType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static makeTag(II)I
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

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
