.class public final Lcom/android/zxing/YUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "YUVLuminanceSource.java"


# instance fields
.field private final mDataHeight:I

.field private final mDataWidth:I

.field private final mLeft:I

.field private final mTop:I

.field private final mYUVData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0

    .line 22
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 28
    iput-object p1, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    .line 29
    iput p2, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    .line 30
    iput p3, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataHeight:I

    .line 31
    iput p4, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    .line 32
    iput p5, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crop rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMatrix()[B
    .locals 7

    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 56
    iget v2, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataHeight:I

    if-ne v1, v2, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    return-object p0

    :cond_0
    mul-int v2, v0, v1

    .line 61
    new-array v3, v2, [B

    .line 62
    iget v4, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    iget v5, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    mul-int/2addr v4, v5

    iget v6, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    add-int/2addr v4, v6

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 66
    iget-object p0, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    invoke-static {p0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v5, v6, v0

    .line 74
    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v5, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 41
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 42
    :cond_0
    new-array p2, v0, [B

    .line 44
    :cond_1
    iget v1, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    add-int/2addr p1, v1

    .line 45
    iget-object p0, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested row is outside the image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
