.class Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;
.super Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopFileCompatCommonImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    return-void
.end method


# virtual methods
.method public getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->getExtSDCardPaths()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 122
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 126
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 127
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    iput-object v4, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->accessSDPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "storage"

    .line 133
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 134
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getStorageVolume(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    .line 136
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageVolume;

    .line 137
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createAccessIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "FileCompat"

    if-nez p0, :cond_3

    const-string p0, "getStorageAccessForLOLLIPOP error, intent is null"

    .line 139
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 v1, 0xa1

    .line 143
    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "getStorageAccessForLOLLIPOP error"

    .line 145
    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v0

    :cond_5
    :goto_3
    return v1
.end method

.method public getTreeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 111
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sd_path_tree_uri"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 113
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 159
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "FileCompat"

    if-nez p2, :cond_1

    const-string p0, "handleActivityResult: uri is null, documents permission is Failed!"

    .line 162
    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 167
    :cond_1
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    and-int/lit8 p4, p4, 0x3

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string p4, "sd_path_tree_uri"

    .line 172
    invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p4, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->accessSDPath:Ljava/lang/String;

    .line 174
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 179
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheUri failed, uri = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    :cond_2
    :goto_0
    return v0
.end method

.method public hasStoragePermission(Ljava/lang/String;)Z
    .locals 5

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->isExternalSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 203
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 206
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 206
    invoke-static {v2, p0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasStoragePermission document = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FileCompat"

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    return v0

    .line 212
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->exists()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canRead()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canRead()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method
