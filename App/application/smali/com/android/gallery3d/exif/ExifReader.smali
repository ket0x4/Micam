.class Lcom/android/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# instance fields
.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1, p0}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object p0

    .line 47
    new-instance p1, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const-string v2, "ExifReader"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 86
    array-length v1, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "Failed to read the strip bytes"

    .line 89
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 74
    new-array v0, v0, [B

    .line 75
    array-length v1, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v0, "Failed to read the compressed thumbnail"

    .line 78
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressedImageSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 69
    :cond_6
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 57
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_8
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 54
    :cond_9
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    return-object p1
.end method
