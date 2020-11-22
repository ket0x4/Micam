.class Lcom/android/camera/network/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;,
        Lcom/android/camera/network/download/DownloadTask$OnProgressListener;,
        Lcom/android/camera/network/download/DownloadTask$CoreTask;,
        Lcom/android/camera/network/download/DownloadTask$TaskInfo;
    }
.end annotation


# static fields
.field private static final RETRY_INTERVAL_MILLI:J


# instance fields
.field private mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

.field private mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

.field private mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

.field private mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/network/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    return-void
.end method

.method constructor <init>(Lcom/android/camera/network/download/Request;Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;-><init>(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)V

    iput-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    .line 57
    iput-object p2, p0, Lcom/android/camera/network/download/DownloadTask;->mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->performRequest(Lcom/android/camera/network/download/Request;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    return-object p0
.end method

.method private configure(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/16 p0, 0x2710

    .line 193
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p0, 0x3a98

    .line 194
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p0, "Accept-Encoding"

    const-string v0, "identity"

    .line 199
    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 257
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isRetryState(I)Z
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 5

    .line 308
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "DownloadTask"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "create folder failed"

    .line 310
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "output file is a directory"

    .line 316
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "output file will be overwritten"

    .line 319
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "temp file exists, try delete"

    .line 325
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "temp file delete failed, will overwrite"

    .line 327
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 334
    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private performProgressUpdate([BI)V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v1, v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    int-to-long v3, p2

    add-long/2addr v3, v1

    .line 209
    iput-wide v3, v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    .line 210
    iget-object v0, v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 211
    invoke-virtual {v0, p1, v3, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v3, p1, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    .line 215
    iget-wide p1, p1, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    long-to-double p1, p1

    long-to-double v5, v3

    div-double/2addr p1, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v5

    double-to-int p1, p1

    long-to-double v0, v1

    long-to-double v2, v3

    div-double/2addr v0, v2

    mul-double/2addr v0, v5

    double-to-int p2, v0

    if-eq p2, p1, :cond_1

    .line 218
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->publishProgress(I)V

    :cond_1
    return-void
.end method

.method private performRequest(Lcom/android/camera/network/download/Request;)I
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "start to download request[%s, %s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/android/camera/network/download/DownloadTask;->preRequest()V

    .line 87
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getMaxRetryTimes()I

    move-result v0

    move v4, v2

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->process(Lcom/android/camera/network/download/Request;)I

    move-result v5

    .line 92
    invoke-static {v5}, Lcom/android/camera/network/download/DownloadTask;->isRetryState(I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v3, [Ljava/lang/Object;

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "retry for %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    sget-wide v6, Lcom/android/camera/network/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    invoke-static {v6, v7, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v3

    if-le v4, v0, :cond_0

    goto :goto_0

    :catch_0
    const/4 v5, 0x5

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/camera/network/download/DownloadTask;->postRequest(I)I

    move-result p0

    return p0
.end method

.method private postDownload()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->access$100(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object v0

    const-string v1, "DownloadTask"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->access$100(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/network/download/Verifier;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "verify fail"

    .line 228
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    return p0

    :cond_1
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "verify success"

    .line 225
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private postRequest(I)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "DownloadTask"

    if-eqz p1, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->access$100(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "delete tmp file failed %s"

    .line 238
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->access$100(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/16 v4, 0x9

    if-nez v3, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "downloaded file missing"

    .line 244
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 246
    :cond_1
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "downloaded file rename failed"

    .line 247
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "rename tmp file success"

    .line 250
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return p1
.end method

.method private preDownload(Lcom/android/camera/network/download/Request;)V
    .locals 2

    .line 185
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "need verify, try to get MessageDigest"

    .line 187
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    invoke-virtual {p1}, Lcom/android/camera/network/download/Verifier;->getInstance()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    :cond_0
    return-void
.end method

.method private preRequest()V
    .locals 2

    .line 181
    new-instance v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/network/download/DownloadTask$TaskInfo;-><init>(Lcom/android/camera/network/download/DownloadTask$1;)V

    iput-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    return-void
.end method

.method private process(Lcom/android/camera/network/download/Request;)I
    .locals 8

    .line 111
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/network/download/ConnectionHelper;->open(Landroid/net/Uri;I)Lcom/android/camera/network/download/ConnectionHelper$Holder;

    move-result-object v0

    .line 112
    iget-object v1, v0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    const-string v3, "DownloadTask"

    if-nez v1, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "open connection failed"

    .line 114
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget p0, v0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask;->translateErrorCode(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/camera/network/download/DownloadTask;->configure(Ljava/net/HttpURLConnection;)V

    .line 122
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/network/download/DownloadTask;->translateResponseCode(I)I

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "response code not valid"

    new-array p1, v2, [Ljava/lang/Object;

    .line 126
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v4

    .line 130
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/camera/network/download/DownloadTask;->processHeader(Ljava/net/HttpURLConnection;)V

    .line 132
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/network/download/DownloadTask;->openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "open output stream failed"

    new-array p1, v2, [Ljava/lang/Object;

    .line 136
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x4

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_2

    .line 164
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 172
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 174
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return p0

    .line 140
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->preDownload(Lcom/android/camera/network/download/Request;)V

    const-string p1, "start to transfer data"

    new-array v5, v2, [Ljava/lang/Object;

    .line 141
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2000

    new-array p1, p1, [B

    move v5, v2

    .line 145
    :goto_2
    iget-object v6, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-virtual {v6}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_5

    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v7, :cond_5

    .line 146
    invoke-virtual {v0, p1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    invoke-direct {p0, p1, v5}, Lcom/android/camera/network/download/DownloadTask;->performProgressUpdate([BI)V

    goto :goto_2

    :cond_5
    if-ne v5, v7, :cond_8

    const-string p1, "download success"

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/camera/network/download/DownloadTask;->postDownload()I

    move-result p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_6

    .line 164
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 166
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 172
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 174
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return p0

    :cond_8
    :try_start_8
    const-string p0, "cancelled, during download"

    new-array p1, v2, [Ljava/lang/Object;

    .line 154
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 p0, 0x5

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_9

    .line 164
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 166
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 172
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 174
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_6
    return p0

    :catchall_0
    move-exception p0

    goto :goto_a

    :catch_6
    move-exception p0

    move-object p1, v0

    move-object v0, v4

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v4, v0

    goto :goto_a

    :catch_7
    move-exception p0

    move-object p1, v0

    .line 158
    :goto_7
    :try_start_b
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/16 p0, 0xb

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_b

    .line 164
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 166
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_8
    if-eqz p1, :cond_c

    .line 172
    :try_start_d
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_9

    :catch_9
    move-exception p1

    .line 174
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_9
    return p0

    :catchall_2
    move-exception p0

    move-object v4, v0

    move-object v0, p1

    .line 161
    :goto_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_d

    .line 164
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    .line 166
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_b
    if-eqz v0, :cond_e

    .line 172
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    .line 174
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_e
    :goto_c
    throw p0
.end method

.method private processHeader(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 204
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v0, p0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "content length: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadTask"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static translateErrorCode(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static translateResponseCode(I)I
    .locals 4

    const-string v0, "DownloadTask"

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p0, v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 263
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "processing http code %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x3

    const/4 v2, 0x7

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x4

    const/16 v3, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x198

    if-ne p0, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_3

    return v3

    :cond_3
    const/16 p0, 0x8

    return p0

    :cond_4
    const/4 p0, 0x2

    if-ne v0, p0, :cond_5

    :cond_5
    return v2

    :cond_6
    new-array p0, v1, [Ljava/lang/Object;

    const-string v2, "http status is ok"

    .line 283
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method execute(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method setOnProgressListener(Lcom/android/camera/network/download/DownloadTask$OnProgressListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    return-void
.end method
