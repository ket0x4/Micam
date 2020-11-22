.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table()[I
    .locals 3

    .line 35
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->values()[Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 33

    const-string v0, "CTRL_PS"

    const-string v1, " "

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    const-string v28, "CTRL_LL"

    const-string v29, "CTRL_ML"

    const-string v30, "CTRL_DL"

    const-string v31, "CTRL_BS"

    .line 48
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string v25, "w"

    const-string v26, "x"

    const-string v27, "y"

    const-string v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    .line 53
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    .line 51
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string v26, "|"

    const-string v27, "~"

    const-string v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    .line 59
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string v30, "{"

    const-string v31, "}"

    const-string v32, "CTRL_UL"

    .line 64
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    .line 68
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 67
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x6

    .line 204
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 207
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v1, 0xa

    .line 210
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    .line 213
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result p0

    .line 217
    array-length v2, p1

    div-int/2addr v2, v1

    if-lt v2, p0, :cond_e

    .line 221
    array-length v3, p1

    rem-int/2addr v3, v1

    sub-int v4, v2, p0

    .line 224
    new-array v5, v2, [I

    const/4 v6, 0x0

    move v7, v3

    move v3, v6

    :goto_1
    if-lt v3, v2, :cond_d

    .line 230
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 231
    invoke-virtual {p1, v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    shl-int v0, p1, v1

    sub-int/2addr v0, p1

    move v2, v6

    move v3, v2

    :goto_2
    if-lt v2, p0, :cond_9

    mul-int v2, p0, v1

    sub-int/2addr v2, v3

    .line 249
    new-array v4, v2, [Z

    move v2, v6

    move v3, v2

    :goto_3
    if-lt v2, p0, :cond_3

    return-object v4

    .line 252
    :cond_3
    aget v7, v5, v2

    if-eq v7, p1, :cond_7

    add-int/lit8 v8, v0, -0x1

    if-ne v7, v8, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v1, -0x1

    :goto_4
    if-gez v8, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v9, v3, 0x1

    shl-int v10, p1, v8

    and-int/2addr v10, v7

    if-eqz v10, :cond_6

    move v10, p1

    goto :goto_5

    :cond_6
    move v10, v6

    .line 259
    :goto_5
    aput-boolean v10, v4, v3

    add-int/lit8 v8, v8, -0x1

    move v3, v9

    goto :goto_4

    :cond_7
    :goto_6
    add-int v8, v3, v1

    sub-int/2addr v8, p1

    if-le v7, p1, :cond_8

    move v7, p1

    goto :goto_7

    :cond_8
    move v7, v6

    .line 255
    :goto_7
    invoke-static {v4, v3, v8, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v7, v1, -0x1

    add-int/2addr v3, v7

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 241
    :cond_9
    aget v4, v5, v2

    if-eqz v4, :cond_c

    if-eq v4, v0, :cond_c

    if-eq v4, p1, :cond_a

    add-int/lit8 v7, v0, -0x1

    if-ne v4, v7, :cond_b

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 243
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 233
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 226
    :cond_d
    invoke-static {p1, v7, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    aput v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v7, v1

    goto :goto_1

    .line 219
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 175
    invoke-static {}, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 183
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bad table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 181
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 179
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 177
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 9

    .line 93
    array-length v0, p0

    .line 94
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v4

    move v1, v3

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v4, v6, :cond_6

    sub-int v4, v0, v1

    if-ge v4, v7, :cond_1

    goto :goto_3

    .line 103
    :cond_1
    invoke-static {p0, v1, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v4

    add-int/lit8 v1, v1, 0x5

    if-nez v4, :cond_3

    sub-int v4, v0, v1

    const/16 v6, 0xb

    if-ge v4, v6, :cond_2

    goto :goto_3

    .line 109
    :cond_2
    invoke-static {p0, v1, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    add-int/lit8 v1, v1, 0xb

    :cond_3
    move v6, v4

    move v4, v1

    move v1, v3

    :goto_1
    if-lt v1, v6, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    sub-int v7, v0, v4

    const/16 v8, 0x8

    if-ge v7, v8, :cond_5

    move v1, v0

    goto :goto_4

    .line 117
    :cond_5
    invoke-static {p0, v4, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    int-to-char v7, v7

    .line 118
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_6
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v4, v6, :cond_7

    const/4 v6, 0x4

    goto :goto_2

    :cond_7
    move v6, v7

    :goto_2
    sub-int v8, v0, v1

    if-ge v8, v6, :cond_8

    .line 144
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_8
    invoke-static {p0, v1, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    add-int/2addr v1, v6

    .line 130
    invoke-static {v4, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CTRL_"

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 133
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v6

    const/4 v7, 0x6

    .line 134
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x4c

    if-ne v4, v7, :cond_9

    move-object v4, v6

    move-object v5, v4

    goto :goto_0

    :cond_9
    move-object v4, v6

    goto :goto_0

    .line 138
    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object v4, v5

    goto :goto_0
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    .line 164
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 157
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 153
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 155
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 159
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    .line 161
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 328
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance p1, Lcom/google/zxing/common/DecoderResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, v0, v0}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 273
    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-eqz v2, :cond_0

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0xb

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0xe

    .line 275
    :goto_0
    new-array v4, v3, [I

    .line 276
    invoke-static {v0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v5

    new-array v5, v5, [Z

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    .line 279
    :goto_1
    array-length v9, v4

    if-lt v8, v9, :cond_1

    goto :goto_3

    .line 280
    :cond_1
    aput v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v3, 0x1

    .line 283
    div-int/lit8 v9, v3, 0x2

    add-int/lit8 v10, v9, -0x1

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v10, v7

    add-int/2addr v8, v10

    .line 285
    div-int/2addr v8, v7

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v9, :cond_7

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-lt v11, v0, :cond_3

    return-object v5

    :cond_3
    sub-int v8, v0, v11

    mul-int/lit8 v8, v8, 0x4

    if-eqz v2, :cond_4

    add-int/lit8 v8, v8, 0x9

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0xc

    :goto_5
    move v13, v8

    mul-int/lit8 v14, v11, 0x2

    add-int/lit8 v8, v3, -0x1

    sub-int v15, v8, v14

    const/4 v8, 0x0

    :goto_6
    if-lt v8, v13, :cond_5

    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    mul-int/lit8 v16, v8, 0x2

    const/4 v9, 0x0

    :goto_7
    if-lt v9, v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    add-int v10, v12, v16

    add-int/2addr v10, v9

    add-int v17, v14, v9

    .line 304
    aget v6, v4, v17

    add-int v18, v14, v8

    aget v7, v4, v18

    invoke-virtual {v1, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 303
    aput-boolean v6, v5, v10

    mul-int/lit8 v6, v13, 0x2

    add-int/2addr v6, v12

    add-int v6, v6, v16

    add-int/2addr v6, v9

    .line 307
    aget v7, v4, v18

    sub-int v10, v15, v9

    move/from16 v18, v0

    aget v0, v4, v10

    invoke-virtual {v1, v7, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 306
    aput-boolean v0, v5, v6

    mul-int/lit8 v0, v13, 0x4

    add-int/2addr v0, v12

    add-int v0, v0, v16

    add-int/2addr v0, v9

    .line 310
    aget v6, v4, v10

    sub-int v7, v15, v8

    aget v10, v4, v7

    invoke-virtual {v1, v6, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 309
    aput-boolean v6, v5, v0

    mul-int/lit8 v0, v13, 0x6

    add-int/2addr v0, v12

    add-int v0, v0, v16

    add-int/2addr v0, v9

    .line 313
    aget v6, v4, v7

    aget v7, v4, v17

    invoke-virtual {v1, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 312
    aput-boolean v6, v5, v0

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v18

    const/4 v7, 0x2

    goto :goto_7

    :cond_7
    move/from16 v18, v0

    .line 287
    div-int/lit8 v0, v10, 0xf

    add-int/2addr v0, v10

    sub-int v6, v9, v10

    add-int/lit8 v6, v6, -0x1

    sub-int v7, v8, v0

    add-int/lit8 v7, v7, -0x1

    .line 288
    aput v7, v4, v6

    add-int v6, v9, v10

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x1

    .line 289
    aput v0, v4, v6

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v18

    const/4 v7, 0x2

    goto/16 :goto_2
.end method
