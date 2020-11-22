.class public Lcom/android/camera/FileCompat;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FileCompat$MarshmallowFileCompatImpl;,
        Lcom/android/camera/FileCompat$LollipopFileCompatImpl;,
        Lcom/android/camera/FileCompat$BaseFileCompatImpl;,
        Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;,
        Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;,
        Lcom/android/camera/FileCompat$FileCompatOperateImpl;,
        Lcom/android/camera/FileCompat$FileCompatCommonImpl;
    }
.end annotation


# static fields
.field static final IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

.field static final IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;

    invoke-direct {v0}, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;-><init>()V

    sput-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    .line 43
    new-instance v0, Lcom/android/camera/FileCompat$MarshmallowFileCompatImpl;

    invoke-direct {v0}, Lcom/android/camera/FileCompat$MarshmallowFileCompatImpl;-><init>()V

    sput-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;

    invoke-direct {v0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;-><init>()V

    sput-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    .line 46
    new-instance v0, Lcom/android/camera/FileCompat$BaseFileCompatImpl;

    invoke-direct {v0}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;-><init>()V

    sput-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/android/camera/FileCompat;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/android/camera/FileCompat;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/android/camera/FileCompat;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 712
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    .line 699
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDocumentFile(Ljava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;
    .locals 1

    .line 739
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->getDocumentFile(Ljava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1

    .line 725
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 759
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jpg"

    .line 762
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "png"

    .line 764
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "image/png"

    return-object p0

    :cond_2
    const-string v0, "mp4"

    .line 766
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "video/mp4"

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method public static getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static getSDPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 747
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 787
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getTreeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 751
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 792
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static hasStoragePermission(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 782
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->hasStoragePermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSDFile(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 776
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->isExternalSDFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1

    .line 720
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->mkdirs(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_OPERATE:Lcom/android/camera/FileCompat$FileCompatOperateImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/FileCompat$FileCompatOperateImpl;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static updateSDPath()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 797
    sget-object v0, Lcom/android/camera/FileCompat;->IMPL_COMMON:Lcom/android/camera/FileCompat$FileCompatCommonImpl;

    invoke-interface {v0}, Lcom/android/camera/FileCompat$FileCompatCommonImpl;->updateSDPath()V

    return-void
.end method
