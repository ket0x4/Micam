.class public abstract Lcom/android/camera/network/download/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/Verifier$Sha1;
    }
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mHash:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/network/download/Verifier;->mAlgorithm:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/android/camera/network/download/Verifier;->mHash:[B

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/android/camera/network/download/Verifier;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static decode(Ljava/lang/String;I)[B
    .locals 6

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    const/4 v0, 0x0

    move v1, v0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 72
    div-int/lit8 v3, v1, 0x2

    aget-byte v4, p1, v3

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a hex string"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p1

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getInstance()Ljava/security/MessageDigest;
    .locals 1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/network/download/Verifier;->mAlgorithm:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Verifier"

    .line 32
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final verify([B)Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/camera/network/download/Verifier;->mHash:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method
