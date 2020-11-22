.class public final Lcom/android/camera/network/download/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private mAllowedOverMetered:Z

.field private mDestination:Ljava/io/File;

.field private mMaxRetryTimes:I

.field private mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVerifier:Lcom/android/camera/network/download/Verifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    .line 24
    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    .line 26
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    .line 27
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "https"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support scheme: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const-string p2, "Request"

    if-nez p1, :cond_2

    const-string p1, "output file will be overwritten"

    .line 36
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "output file is a directory"

    .line 33
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "dst file exists, is a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/io/File;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-object p0
.end method

.method public getMaxRetryTimes()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    return p0
.end method

.method getNetworkType()I
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/camera/network/download/Request;->mAllowedOverMetered:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getVerifier()Lcom/android/camera/network/download/Verifier;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-object p0
.end method

.method public setVerifier(Lcom/android/camera/network/download/Verifier;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-void
.end method
