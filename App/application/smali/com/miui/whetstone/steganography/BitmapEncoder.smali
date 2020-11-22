.class public Lcom/miui/whetstone/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# direct methods
.method public static createHeader(J)[B
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0x5b

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 20
    invoke-static {p0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x2

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    add-int/lit8 v4, v1, 0x1

    .line 21
    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v1, 0x1

    const/16 p1, 0x5d

    .line 23
    aput-byte p1, v0, v1

    .line 24
    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 3

    .line 43
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    .line 47
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    .line 48
    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 51
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 69
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 80
    fill-array-data v6, :array_0

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    .line 82
    :goto_0
    array-length v12, v1

    array-length v13, v2

    add-int/2addr v12, v13

    if-ge v8, v12, :cond_a

    move v12, v10

    move v10, v9

    move v9, v7

    :goto_1
    const/16 v13, 0x8

    if-ge v9, v13, :cond_9

    .line 88
    array-length v13, v1

    if-ge v8, v13, :cond_0

    .line 89
    aget-byte v13, v1, v8

    shr-int/2addr v13, v9

    and-int/2addr v13, v4

    aput v13, v6, v11

    goto :goto_2

    .line 91
    :cond_0
    array-length v13, v1

    sub-int v13, v8, v13

    aget-byte v13, v2, v13

    shr-int/2addr v13, v9

    and-int/2addr v13, v4

    aput v13, v6, v11

    :goto_2
    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    .line 97
    invoke-virtual {v0, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 100
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 101
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 102
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 105
    rem-int/lit8 v13, v14, 0x2

    aget v16, v6, v7

    rsub-int/lit8 v7, v16, 0x1

    if-ne v13, v7, :cond_1

    add-int/lit8 v14, v14, 0x1

    .line 106
    :cond_1
    rem-int/lit8 v7, v15, 0x2

    aget v13, v6, v4

    rsub-int/lit8 v13, v13, 0x1

    if-ne v7, v13, :cond_2

    add-int/lit8 v15, v15, 0x1

    .line 107
    :cond_2
    rem-int/lit8 v7, v11, 0x2

    const/4 v13, 0x2

    aget v13, v6, v13

    rsub-int/lit8 v13, v13, 0x1

    if-ne v7, v13, :cond_3

    add-int/lit8 v11, v11, 0x1

    :cond_3
    const/16 v7, 0xfe

    const/16 v13, 0x100

    if-ne v14, v13, :cond_4

    move v14, v7

    :cond_4
    if-ne v15, v13, :cond_5

    move v15, v7

    :cond_5
    if-ne v11, v13, :cond_6

    goto :goto_3

    :cond_6
    move v7, v11

    :goto_3
    const/16 v11, 0xff

    .line 115
    invoke-static {v11, v14, v15, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v10, v12, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v10, 0x1

    if-ne v7, v5, :cond_7

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move v10, v7

    :goto_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v12

    const/4 v7, 0x0

    goto :goto_0

    :cond_a
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static longToBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
