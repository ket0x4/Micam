.class public Lcom/android/camera/lib/compatibility/related/v29/V29Utils;
.super Ljava/lang/Object;
.source "V29Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# direct methods
.method public static getMediaUri(Landroid/content/Context;ZZ)Landroid/net/Uri;
    .locals 2

    if-eqz p1, :cond_0

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    if-eqz p2, :cond_2

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/provider/MediaStore;->getAllVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public static hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z
    .locals 0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
