.class public Lcom/android/camera/ExifHelper;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# static fields
.field private static mDateTimeStampFormat:Ljava/text/DateFormat;

.field private static mGPSDateStampFormat:Ljava/text/DateFormat;

.field private static mGPSTimeStampFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    const-string v0, "UTC"

    .line 30
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 32
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 9

    .line 121
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, v0

    sub-double/2addr v1, v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 123
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double/2addr v7, v3

    div-double v3, v1, v5

    sub-double/2addr v7, v3

    const-wide v3, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double p0, p0, v5

    const-string p1, "/1000"

    const-string v5, "/1,"

    if-gez p0, :cond_0

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    .line 139
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    .line 137
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x6

    .line 135
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x1

    .line 133
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeExif(Ljava/io/FileDescriptor;ILandroid/location/Location;J)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;Ljava/io/FileDescriptor;ILandroid/location/Location;J)V

    return-void
.end method

.method public static writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;Ljava/io/FileDescriptor;ILandroid/location/Location;J)V

    return-void
.end method

.method private static writeExif(Ljava/lang/String;Ljava/io/FileDescriptor;ILandroid/location/Location;J)V
    .locals 6

    .line 65
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ExifHelper"

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/android/camera/Util;->isPathExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeExif. the file:["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not exist or empty"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 71
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getExifInterface(Ljava/io/FileDescriptor;)Landroid/media/ExifInterface;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    const-string p0, "writeExif. exif is null"

    .line 76
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "GPSDateStamp"

    .line 79
    sget-object v0, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 80
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1, p0, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "GPSTimeStamp"

    .line 81
    sget-object v0, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 82
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1, p0, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTime"

    .line 83
    sget-object v0, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 84
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 83
    invoke-virtual {p1, p0, p4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 85
    invoke-static {p2}, Lcom/android/camera/ExifHelper;->getExifOrientation(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Make"

    .line 86
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 89
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide p4

    .line 90
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    const-string p0, "GPSLatitude"

    .line 91
    invoke-static {p4, p5}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "GPSLongitude"

    .line 92
    invoke-static {p2, p3}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v0, 0x0

    cmpl-double p0, p4, v0

    const-string p4, "GPSLatitudeRef"

    if-lez p0, :cond_4

    :try_start_2
    const-string p0, "N"

    .line 94
    invoke-virtual {p1, p4, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "S"

    .line 96
    invoke-virtual {p1, p4, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    cmpl-double p0, p2, v0

    const-string p2, "GPSLongitudeRef"

    if-lez p0, :cond_5

    :try_start_3
    const-string p0, "E"

    .line 99
    invoke-virtual {p1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p0, "W"

    .line 101
    invoke-virtual {p1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_6
    :goto_2
    sget-boolean p0, Lcom/android/camera/Device;->IS_MI2:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p2, "Model"

    if-nez p0, :cond_8

    :try_start_4
    sget-boolean p0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz p0, :cond_7

    goto :goto_3

    .line 108
    :cond_7
    sget-object p0, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    const-string p0, "MiTwo"

    .line 105
    invoke-virtual {p1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FocalLength"

    const-string p2, "354/100"

    .line 106
    invoke-virtual {p1, p0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_4
    invoke-virtual {p1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method
