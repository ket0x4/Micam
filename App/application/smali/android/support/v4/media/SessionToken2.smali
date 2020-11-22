.class public final Landroid/support/v4/media/SessionToken2;
.super Ljava/lang/Object;
.source "SessionToken2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "android.media.token.type"

    .line 223
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 225
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    invoke-static {p0}, Landroid/support/v4/media/SessionToken2ImplLegacy;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplLegacy;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    return-object v0

    .line 227
    :cond_1
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    invoke-static {p0}, Landroid/support/v4/media/SessionToken2ImplBase;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplBase;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 129
    instance-of v0, p1, Landroid/support/v4/media/SessionToken2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_0
    check-cast p1, Landroid/support/v4/media/SessionToken2;

    .line 133
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    iget-object p1, p1, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
