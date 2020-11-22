.class Lcom/android/camera/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized generateName(JZZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 1254
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1255
    iget-object v1, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 1260
    div-long v3, p1, v1

    iget-wide v5, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 1261
    iget p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    .line 1262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1264
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    const/4 p1, 0x0

    .line 1265
    iput p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    move-object p1, v0

    .line 1269
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string v1, ".y"

    goto :goto_1

    :cond_2
    const-string v1, ".jpg"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1270
    new-instance v1, Ljava/io/File;

    if-eqz p3, :cond_3

    sget-object v2, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    :goto_2
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_4

    goto :goto_3

    .line 1276
    :cond_4
    iget p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    .line 1277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraUtil"

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateName trying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget p2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    const/16 v1, 0x64

    if-le p2, v1, :cond_1

    goto :goto_4

    :cond_5
    :goto_3
    const-string p2, "CameraUtil"

    .line 1273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateName "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is safe to use."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    :goto_4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
