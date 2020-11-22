.class public Lcom/android/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/android/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/android/gallery3d/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 145
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 168
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 169
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 170
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    .line 171
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 172
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 173
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 174
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 175
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 176
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 177
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 178
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 179
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 180
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 152
    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 160
    iput-boolean v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 162
    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 182
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 212
    iput-object p3, p0, Lcom/android/gallery3d/exif/ExifParser;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    .line 213
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 214
    new-instance p3, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    .line 215
    iput p2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    .line 216
    iget-boolean p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->parseTiffHeader()V

    .line 221
    iget-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 225
    iput p3, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    .line 226
    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    .line 227
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 230
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    .line 231
    iget-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 223
    :cond_3
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null argument inputStream to ExifParser"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkAllowed(II)Z
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 645
    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    return p0
.end method

.method private checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 5

    .line 590
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v0

    .line 594
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 595
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 596
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 598
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 600
    :cond_2
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 601
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 602
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 604
    :cond_3
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 605
    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 607
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 609
    :cond_4
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 610
    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 611
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 612
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 614
    :cond_5
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 615
    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 616
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 617
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_2

    .line 619
    :cond_6
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 620
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 621
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 622
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 623
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 624
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 626
    :cond_7
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 630
    :cond_8
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v1, p1, v4}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 633
    :cond_9
    sget-short v2, Lcom/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 634
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 635
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 636
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 193
    :cond_0
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 195
    :cond_2
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 191
    :cond_4
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 189
    :cond_6
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 187
    :cond_8
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 0

    .line 201
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 395
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v2

    .line 404
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    return p0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result p0

    return p0

    .line 397
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/android/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 750
    :goto_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    return-void

    .line 751
    :cond_1
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_2
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 539
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 545
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 546
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifParser"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    const/4 p0, 0x0

    return-object p0

    .line 551
    :cond_0
    new-instance v10, Lcom/android/gallery3d/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 553
    invoke-virtual {v10}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 555
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 562
    iget v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 563
    new-array v0, v11, [B

    .line 564
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    invoke-virtual {v10, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    .line 568
    invoke-virtual {v10, p0}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 557
    :cond_3
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v0, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :cond_4
    invoke-virtual {v10}, Lcom/android/gallery3d/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 573
    invoke-virtual {v10, v9}, Lcom/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 576
    invoke-virtual {v10, v0}, Lcom/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 579
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v10, p0}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 541
    :cond_5
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v0, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerCompressedImage(J)V
    .locals 1

    .line 528
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    invoke-direct {p3, p1, p0}, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p1}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static seekDynamicSpotDataIndex([B)[I
    .locals 15

    const-string v0, "ExifParser"

    const/16 v1, -0x27

    .line 807
    invoke-static {v1}, Lcom/android/gallery3d/exif/JpegHeader;->getByteArrayOfTag(S)[B

    move-result-object v1

    const/16 v2, -0x28

    .line 808
    invoke-static {v2}, Lcom/android/gallery3d/exif/JpegHeader;->getByteArrayOfTag(S)[B

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [I

    .line 810
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 811
    new-instance v6, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v6, v5}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    .line 813
    :try_start_0
    invoke-virtual {v6}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v7

    if-eq v7, v2, :cond_0

    const-string p0, "Invalid JPEG format"

    .line 814
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 817
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifParser;->seekSOSIndex(Lcom/android/gallery3d/exif/CountedDataInputStream;)I

    move-result v2

    .line 819
    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->indexOf([B[BI)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v4, v8

    .line 821
    aget v7, v4, v8

    const/4 v8, 0x2

    add-int/2addr v7, v8

    invoke-static {p0, v3, v7}, Lcom/android/camera/Util;->indexOf([B[BI)I

    move-result v7

    const/4 v9, 0x1

    aput v7, v4, v9

    .line 822
    aget v7, v4, v9

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    const-string p0, "Invalid spot data, not found SOI of raw data."

    .line 823
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 826
    :cond_1
    aget v7, v4, v9

    sub-int/2addr v7, v2

    add-int/2addr v7, v8

    int-to-long v11, v7

    .line 827
    invoke-virtual {v6, v11, v12}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v13

    cmp-long v2, v11, v13

    if-eqz v2, :cond_2

    const-string p0, "Invalid dynamic light spot data"

    .line 828
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 831
    :cond_2
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifParser;->seekSOSIndex(Lcom/android/gallery3d/exif/CountedDataInputStream;)I

    move-result v2

    .line 833
    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->indexOf([B[BI)I

    move-result v1

    aput v1, v4, v8

    .line 835
    aget v1, v4, v8

    add-int/2addr v1, v8

    invoke-static {p0, v3, v1}, Lcom/android/camera/Util;->indexOf([B[BI)I

    move-result p0

    const/4 v1, 0x3

    aput p0, v4, v1

    .line 836
    aget p0, v4, v1

    if-ne p0, v10, :cond_3

    const-string p0, "Invalid dynamic light spot depth data"

    .line 837
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 841
    :cond_3
    aget p0, v4, v1

    add-int/2addr p0, v8

    aput p0, v4, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    :goto_0
    return-object v4
.end method

.method public static seekSOSIndex(Lcom/android/gallery3d/exif/CountedDataInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    :goto_0
    const/16 v1, -0x27

    if-eq v0, v1, :cond_2

    const/16 v1, -0x26

    if-eq v0, v1, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    .line 796
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "ExifParser"

    const-string v0, "Invalid JPEG format."

    .line 797
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 802
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p0

    return p0
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 757
    new-instance v0, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 758
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 762
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 764
    invoke-static {p1}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 765
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 773
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    .line 777
    iput v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    .line 778
    iget p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 783
    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 787
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "ExifParser"

    const-string p1, "Invalid JPEG format."

    .line 784
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 759
    :cond_4
    new-instance p0, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string p1, "Invalid JPEG format"

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    return-object p0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 493
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 496
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getCurrentIfd()I
    .locals 0

    .line 455
    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    return p0
.end method

.method protected getStripIndex()I
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return p0
.end method

.method protected getStripSize()I
    .locals 2

    .line 483
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 485
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    return-object p0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 279
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 281
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result p0

    return p0

    .line 285
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 286
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    const-string v5, "ExifParser"

    if-ne v0, v2, :cond_8

    .line 291
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    .line 292
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    .line 293
    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 295
    invoke-direct {p0, v4, v8, v9}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    .line 303
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid link to next IFD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 319
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    instance-of v4, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 326
    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    .line 327
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 330
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mApp1End:I

    if-le v0, v4, :cond_9

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size of IFD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 335
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 336
    iget-boolean v0, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 339
    :cond_a
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 341
    :cond_b
    instance-of v0, v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 342
    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    .line 343
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget p0, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    return p0

    .line 345
    :cond_c
    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    .line 346
    iget-object v0, v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 351
    :cond_d
    iget-boolean v0, v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 321
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method protected readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 654
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 655
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 658
    instance-of v1, v0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const-string v2, "ExifParser"

    if-eqz v1, :cond_1

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 665
    :cond_1
    instance-of v1, v0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    const-string v3, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_2
    instance-of v1, v0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    if-eqz v1, :cond_3

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    .line 670
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    .line 674
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->forceSetComponentCount(I)V

    .line 682
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 726
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/exif/Rational;

    .line 727
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    .line 728
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 730
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)Z

    goto/16 :goto_7

    .line 718
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 719
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    .line 720
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 722
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 702
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/exif/Rational;

    .line 703
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_7

    .line 704
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 706
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)Z

    goto :goto_7

    .line 694
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [J

    .line 695
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_8

    .line 696
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 698
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 710
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 711
    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_9

    .line 712
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 714
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 691
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 685
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 687
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method protected readRational()Lcom/android/gallery3d/exif/Rational;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    .line 933
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result p0

    .line 934
    new-instance v1, Lcom/android/gallery3d/exif/Rational;

    int-to-long v2, v0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v1
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    sget-object v0, Lcom/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 889
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/android/gallery3d/exif/Rational;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 917
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 918
    new-instance p0, Lcom/android/gallery3d/exif/Rational;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method protected readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 3

    .line 516
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 517
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 367
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 374
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    .line 376
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 386
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 387
    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 389
    invoke-direct {p0, v2, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
