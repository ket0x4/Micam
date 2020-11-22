.class public final Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 55
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array p1, p1, [Lcom/google/protobuf/nano/FieldData;

    iput-object p1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 67
    iput v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "size"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 276
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "size"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 285
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private binarySearch(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 257
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 261
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    not-int p0, v1

    return p0
.end method

.method private gc()V
    .locals 8

    .line 112
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 114
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 115
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 118
    aget-object v6, v2, v4

    .line 120
    sget-object v7, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 122
    aget v7, v1, v4

    aput v7, v1, v5

    .line 123
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 124
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iput-boolean v3, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 132
    iput v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "need"
        }
    .end annotation

    const/4 p0, 0x4

    :goto_0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0xc

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private idealIntArraySize(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "need"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    .line 244
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldArray;
    .locals 5

    .line 295
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v0

    .line 296
    new-instance v1, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v1, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 297
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v4, v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    :cond_1
    iput v0, v1, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object p0

    return-object p0
.end method

.method dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/FieldArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 222
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/FieldArray;

    .line 223
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, p1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v1, v3, v4}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 227
    invoke-direct {p0, v1, p1, v3}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method get(I)Lcom/google/protobuf/nano/FieldData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, p0, p1

    sget-object v1, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 236
    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method put(ILcom/google/protobuf/nano/FieldData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "data"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, p0, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 147
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v2, v1, v0

    sget-object v3, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v2, v3, :cond_1

    .line 148
    iget-object p0, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, p0, v0

    .line 149
    aput-object p2, v1, v0

    return-void

    .line 153
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    not-int v0, v0

    .line 160
    :cond_2
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 161
    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 163
    new-array v2, v1, [I

    .line 164
    new-array v1, v1, [Lcom/google/protobuf/nano/FieldData;

    .line 166
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 170
    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 173
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 179
    iget-object p1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, p1, v0

    .line 180
    iget p1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    :goto_0
    return-void
.end method

.method remove(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v0, p1

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_0

    .line 106
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 193
    :cond_0
    iget p0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return p0
.end method
