.class Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;
.super Ljava/lang/Object;
.source "FileCompat.java"

# interfaces
.implements Lcom/android/camera/FileCompat$FileCompatCommonImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatFileCompatCommonImpl"
.end annotation


# instance fields
.field protected accessSDPath:Ljava/lang/String;

.field protected sdPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    return-void
.end method


# virtual methods
.method protected getExtSDCardPaths()[Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtSDCardPaths: activePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileCompat"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public getSDPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 264
    iget-object p0, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->sdPaths:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 267
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTreeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasStoragePermission(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isExternalSDFile(Ljava/lang/String;)Z
    .locals 4

    .line 249
    iget-object p0, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->sdPaths:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 253
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 254
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected update()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->getExtSDCardPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->sdPaths:[Ljava/lang/String;

    return-void
.end method

.method public updateSDPath()V
    .locals 0

    .line 301
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    return-void
.end method
