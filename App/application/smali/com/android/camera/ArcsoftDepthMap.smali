.class public Lcom/android/camera/ArcsoftDepthMap;
.super Ljava/lang/Object;
.source "ArcsoftDepthMap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArcsoftDepthMap"


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/android/camera/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArcsoftDepthMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; 0x80 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/android/camera/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a legal depth format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytes([BII)[B
    .locals 3

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    .line 135
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    .line 139
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WRONG ARGUMENT: from ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytesLength = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 119
    invoke-static {p0, v0, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method private static getInteger([B)I
    .locals 5

    .line 123
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 124
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/android/camera/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthMapData()[B
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapLength()I

    move-result p0

    const/16 v1, 0x98

    invoke-static {v0, v1, p0}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapHeader()[B
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    .line 77
    iget-object p0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapLength()I
    .locals 2

    .line 106
    iget-object p0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x94

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    .line 87
    iget-object p0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v2, 0xc

    invoke-static {p0, v2, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    .line 88
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method
