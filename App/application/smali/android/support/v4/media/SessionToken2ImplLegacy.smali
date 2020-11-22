.class final Landroid/support/v4/media/SessionToken2ImplLegacy;
.super Ljava/lang/Object;
.source "SessionToken2ImplLegacy.java"

# interfaces
.implements Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;


# instance fields
.field private final mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplLegacy;
    .locals 1

    const-string v0, "android.media.token.LEGACY"

    .line 119
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 120
    new-instance v0, Landroid/support/v4/media/SessionToken2ImplLegacy;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/SessionToken2ImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 58
    instance-of v0, p1, Landroid/support/v4/media/SessionToken2ImplLegacy;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    check-cast p1, Landroid/support/v4/media/SessionToken2ImplLegacy;

    .line 62
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p1, p1, Landroid/support/v4/media/SessionToken2ImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken2 {legacyToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
