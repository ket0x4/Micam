.class Lcom/android/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v1, v0, [B

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/exif/IfdData;

    .line 46
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/gallery3d/exif/IfdData;)V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v0

    aput-object p1, p0, v0

    return-void
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object p0

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 354
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/exif/ExifData;

    if-eqz v2, :cond_7

    .line 355
    check-cast p1, Lcom/android/gallery3d/exif/ExifData;

    .line 356
    iget-object v2, p1, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 358
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 362
    iget-object v3, p1, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 367
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    .line 368
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 369
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    .line 289
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 291
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 292
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method protected getCompressedThumbnail()[B
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object p0
.end method

.method protected getIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 1

    .line 128
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 150
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aput-object v0, p0, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method protected getStripCount()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected hasUncompressedStrip()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected removeTag(SI)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
