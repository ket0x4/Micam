.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$PackageInstallerListener;,
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLOR_TEMPERATURE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLOR_TEMPERATURE_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final SCREEN_VENDOR:Ljava/lang/String;

.field private static mCountryIso:Ljava/lang/String;

.field private static mLockedOrientation:I

.field private static sClearMemoryLimit:Z

.field public static sFullScreenExtraMargin:I

.field private static sHasNavigationBar:Z

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field public static sIsDumpLog:Z

.field private static sIsForceNameSuffix:Ljava/lang/Boolean;

.field public static sIsFullScreenNavBarHidden:Z

.field private static sIsLabOptionsVisible:Ljava/lang/Boolean;

.field public static sIsNotchDevice:Z

.field public static sNavigationBarHeight:I

.field public static sNotchHeight:I

.field private static sPixelDensity:F

.field public static sStatusBarHeight:I

.field private static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static sWindowHeight:I

.field private static sWindowManager:Landroid/view/IWindowManager;

.field public static sWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "sys.panel.display"

    .line 177
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 188
    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    const/16 v0, 0x2d0

    .line 189
    sput v0, Lcom/android/camera/Util;->sWindowWidth:I

    const/16 v0, 0x438

    .line 190
    sput v0, Lcom/android/camera/Util;->sWindowHeight:I

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "TW"

    const-string v2, "KR"

    const-string v3, "SA"

    const-string v4, "US"

    const-string v5, "CA"

    const-string v6, "BR"

    const-string v7, "CO"

    const-string v8, "MX"

    const-string v9, "PH"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 207
    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    const/4 v0, -0x1

    .line 208
    sput v0, Lcom/android/camera/Util;->mLockedOrientation:I

    .line 1358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    return-void
.end method

.method public static Assert(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 506
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static addProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1589
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 1731
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 1734
    div-int/lit8 v2, v2, 0x2

    .line 1735
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static calcNavigationBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 1658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700fa

    .line 1659
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1660
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1666
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculate navBarHeight="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraUtil"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static final calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I
    .locals 3

    .line 1899
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1900
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    .line 1901
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v0, v1

    .line 1902
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f0700d6

    goto :goto_0

    :cond_0
    const v0, 0x7f0700d5

    .line 1910
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 1

    .line 1681
    sget-object v0, Lcom/android/camera/Util;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 1683
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1682
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sWindowManager:Landroid/view/IWindowManager;

    .line 1685
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sWindowManager:Landroid/view/IWindowManager;

    invoke-static {p0, v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Util;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraUtil"

    const-string v0, "checkDeviceHasNavigationBar exception"

    .line 1687
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/camera/Util;->sHasNavigationBar:Z

    return p0
.end method

.method public static checkLockedOrientation(Landroid/app/Activity;)V
    .locals 2

    .line 645
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_rotation"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/camera/Util;->mLockedOrientation:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 651
    sput p0, Lcom/android/camera/Util;->mLockedOrientation:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 654
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 606
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clearMemoryLimit()V
    .locals 6

    .line 302
    sget-boolean v0, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 304
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    const/4 v2, 0x1

    .line 305
    sput-boolean v2, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearMemoryLimit() consume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 498
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 398
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 399
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 402
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 404
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 404
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 380
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 390
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 3

    .line 1337
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1341
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1343
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1ff

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1346
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createJpegName(JLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1096
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v1, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Util$ImageFileNamer;->generateName(JZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createJpegName(JZZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1092
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    move-wide v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Util$ImageFileNamer;->generateName(JZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dpToPixel(F)I
    .locals 1

    .line 312
    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static dumpMatrix([F)Ljava/lang/String;
    .locals 6

    .line 1067
    array-length v0, p0

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1070
    aget v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, " "

    .line 1072
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 1075
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enableFakeThumbnail(Lcom/android/camera/ActivityBase;)Z
    .locals 0

    .line 516
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 517
    invoke-interface {p0}, Lcom/android/camera/module/Module;->enableFakeThumbnail()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static expandViewTouchDelegate(Landroid/view/View;)V
    .locals 3

    .line 1444
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1446
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 1447
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    .line 1449
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1450
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1451
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1452
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1454
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1455
    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 1459
    :cond_0
    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 1117
    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1106
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1108
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 1110
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1111
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 1112
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 1131
    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 1123
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1124
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 1125
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    .line 1126
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 521
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 522
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 523
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 522
    invoke-virtual {v5, v1, v3, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 526
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v7

    :catch_0
    move-exception p0

    const-string v0, "CameraUtil"

    const-string v1, "Failed to rotate thumbnail"

    .line 538
    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

.method public static generateVideoName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1287
    new-instance p1, Ljava/text/SimpleDateFormat;

    const p2, 0x7f0f0492

    .line 1288
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1290
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string p4, "CameraUtil"

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1301
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "generateVideoName try another one"

    .line 1306
    invoke-static {p4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 1303
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateVideoName new path-> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p2

    .line 1292
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generateVideoName safe to use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getAILensIntent(II)Landroid/content/Intent;
    .locals 2

    .line 1815
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.XIAOAI_CONTROL"

    .line 1816
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.lens"

    .line 1817
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-lez p0, :cond_0

    const-string v1, "preview_width"

    .line 1819
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-lez p1, :cond_1

    const-string p0, "preview_height"

    .line 1822
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private static getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    .line 2025
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2026
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 2030
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraUtil"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method

.method public static getBottomHeight(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x7f070028

    .line 1796
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1797
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    if-eqz v0, :cond_0

    .line 1798
    sget v0, Lcom/android/camera/Util;->sFullScreenExtraMargin:I

    sub-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2292
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2295
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    long-to-int v1, v1

    .line 2308
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 2313
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    array-length v3, v1

    sub-int/2addr v3, v2

    .line 2314
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 2319
    :cond_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 2325
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .line 2320
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 2321
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not completely read file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2302
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 2304
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCenterFocusDepthIndex([BII)I
    .locals 11

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 1384
    array-length v1, p0

    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 1391
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 1393
    aget-byte v1, p0, v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 1396
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 1400
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 1404
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1405
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v1

    .line 1406
    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v3, v5

    mul-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float p2, p2

    mul-float/2addr v5, p2

    int-to-float p1, p1

    div-float/2addr v5, p1

    div-float/2addr v4, v5

    float-to-int p1, v4

    sub-int/2addr v2, p1

    .line 1408
    div-int/lit8 v2, v2, 0x2

    const/4 p2, 0x5

    new-array v4, p2, [I

    const/4 v5, 0x0

    move v6, v2

    move v2, v5

    :goto_0
    if-ge v2, p1, :cond_3

    add-int/lit8 v7, v6, 0x1

    mul-int/2addr v6, v1

    sub-int v8, v1, v3

    .line 1411
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    move v8, v6

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 1413
    aget-byte v8, p0, v8

    aget v10, v4, v8

    add-int/2addr v10, v0

    aput v10, v4, v8

    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v0, p2, :cond_5

    .line 1419
    aget p0, v4, v5

    aget p1, v4, v0

    if-ge p0, p1, :cond_4

    move v5, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v5

    :cond_6
    :goto_3
    return v0
.end method

.method public static getChildMeasureWidth(Landroid/view/View;)I
    .locals 2

    .line 1973
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1974
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 1976
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1980
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1981
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1982
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method private static getColorMapXmlMapFile()Ljava/io/File;
    .locals 3

    .line 2005
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "CameraUtil"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 2006
    new-instance v0, Ljava/io/File;

    const-string v2, "/vendor/etc/screen_light.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v0, "screen_light.xml do not found under /vendor/etc, roll back to /system/etc"

    .line 2010
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/screen_light.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "screen_light.xml do not found under /system/etc"

    .line 2019
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDebugInfo()Ljava/lang/String;
    .locals 3

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.camera.debug.show_af"

    .line 1537
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "persist.camera.debug.enable"

    .line 1538
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "persist.camera.debug.param0"

    .line 1539
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param1"

    .line 1540
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param2"

    .line 1541
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param3"

    .line 1542
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param4"

    .line 1543
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param5"

    .line 1544
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param6"

    .line 1545
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param7"

    .line 1546
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param8"

    .line 1547
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param9"

    .line 1548
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "persist.camera.debug.show_awb"

    .line 1551
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.camera.debug.param10"

    .line 1552
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param11"

    .line 1553
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param12"

    .line 1554
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param13"

    .line 1555
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param14"

    .line 1556
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param15"

    .line 1557
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param16"

    .line 1558
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param17"

    .line 1559
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param18"

    .line 1560
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param19"

    .line 1561
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "persist.camera.debug.show_aec"

    .line 1564
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "persist.camera.debug.param20"

    .line 1565
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param21"

    .line 1566
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param22"

    .line 1567
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param23"

    .line 1568
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param24"

    .line 1569
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param25"

    .line 1570
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param26"

    .line 1571
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param27"

    .line 1572
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param28"

    .line 1573
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.param29"

    .line 1574
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "persist.camera.debug.checkerf"

    .line 1576
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.fc"

    .line 1577
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.camera.debug.hht"

    .line 1578
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "camera.debug.hht.luma"

    .line 1579
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "persist.camera.debug.autoscene"

    .line 1581
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "camera.debug.hht.iso"

    .line 1582
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTopMargin(I)I
    .locals 1

    .line 1804
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_0

    .line 1805
    sget v0, Lcom/android/camera/Util;->sStatusBarHeight:I

    sub-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static getDisplayOrientation(II)I
    .locals 2

    .line 704
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 705
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 707
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 708
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    rsub-int p0, p1, 0x168

    .line 709
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 711
    :cond_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p0, p1, 0x168

    :goto_0
    return p0
.end method

.method public static getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    .line 1764
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    const/high16 v1, 0x41100000    # 9.0f

    if-eq v0, p0, :cond_0

    .line 1771
    sget p0, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    .line 1772
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sub-int/2addr v0, p0

    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1776
    :cond_0
    sget p0, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 p0, p0, 0x12

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    .line 1777
    sget v0, Lcom/android/camera/Util;->sStatusBarHeight:I

    goto :goto_0

    .line 1781
    :cond_1
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1782
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result p0

    sub-int p0, v1, p0

    move v4, v0

    move v0, p0

    move p0, v4

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    move v0, v2

    .line 1791
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    add-int/2addr p0, v0

    invoke-direct {v1, v2, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 4

    .line 677
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 679
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_1

    .line 680
    :cond_0
    sget p0, Lcom/android/camera/Util;->mLockedOrientation:I

    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    .line 681
    :cond_2
    :goto_0
    sget p0, Lcom/android/camera/Util;->mLockedOrientation:I

    :goto_1
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    return v2

    :cond_3
    const/16 p0, 0x10e

    return p0

    :cond_4
    const/16 p0, 0xb4

    return p0

    :cond_5
    const/16 p0, 0x5a

    return p0

    :cond_6
    return v2
.end method

.method public static getDuration(Ljava/io/FileDescriptor;)J
    .locals 2

    const/4 v0, 0x0

    .line 2220
    invoke-static {v0, p0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDuration(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    .line 2216
    invoke-static {p0, v0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDuration(Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .locals 9

    .line 2235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-wide v1

    .line 2239
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const/16 v3, 0x168

    if-ge v4, v3, :cond_5

    .line 2241
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-string v5, "CameraUtil"

    if-nez p1, :cond_2

    .line 2244
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 2246
    :cond_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_1
    const/16 v6, 0x9

    .line 2248
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "getDuration: but retriever.extractMetadata return null "

    .line 2251
    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v6, "getDuration: while current thread is mainthread , only request once and return duration 0 of the radio"

    .line 2253
    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_4

    :cond_3
    const-wide/16 v6, 0x14

    .line 2256
    :try_start_1
    invoke-static {v6, v7}, Lcom/android/camera/Util;->safelySleep(J)V

    add-int/lit8 v4, v4, 0x14

    .line 2258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDuration: but retriever.extractMetadata return null, and retry again. the total retry duration is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2266
    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 2261
    :cond_4
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDuration: METADATA_KEY_DURATION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2266
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 2264
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2266
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0

    :cond_5
    :goto_4
    return-wide v1
.end method

.method public static getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "CameraUtil"

    .line 1598
    :try_start_0
    invoke-static {p0, p2, p3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p2

    .line 1599
    invoke-virtual {p2, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "no field "

    .line 1603
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method public static getJpegRotation(II)I
    .locals 2

    .line 1138
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1140
    iget v0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1141
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 1143
    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 1146
    :cond_1
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    :goto_0
    return p0
.end method

.method public static getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 1493
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1494
    aget-object v2, p0, v1

    invoke-static {v2, p1, p2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    .line 1497
    :catch_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1498
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p0, v1

    .line 1499
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMethod fail, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getMiuiTimeTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "fonts/MIUI_Time.ttf"

    .line 1369
    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "fonts/MIUI_Normal.ttf"

    .line 1361
    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 1650
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 1651
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1652
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navBarHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getNeedSealCameraUUIDIntentExtras(Landroid/app/Activity;)Z
    .locals 2

    .line 968
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extras.EXTRAS_SEAL_CAMERAUUID_WATERMARK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "null thumbnail size list"

    .line 866
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 874
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 875
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-eqz v6, :cond_1

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    int-to-double v8, v6

    int-to-double v6, v7

    div-double/2addr v8, v6

    sub-double v6, v8, p1

    .line 879
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double v10, v2, p1

    .line 880
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v6, v12

    if-lez v12, :cond_3

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v6, v12

    if-lez v12, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 883
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v6, v6, v10

    if-ltz v6, :cond_4

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v6, v7, :cond_1

    :cond_4
    move-object v1, v5

    move-wide v2, v8

    goto :goto_0

    :cond_5
    if-nez v1, :cond_8

    const-string v2, "No thumbnail size match the aspect ratio"

    .line 893
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_7

    .line 895
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v3, v4, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method public static getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    move/from16 v0, p0

    const-string v1, "CameraUtil"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string v0, "null preview size list"

    .line 754
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const-string v4, "camera_reduce_preview_flag"

    .line 772
    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x438

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    .line 780
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v8

    move/from16 v9, p1

    if-ne v9, v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v3

    .line 783
    :goto_0
    sget v9, Lcom/android/camera/Util;->sWindowWidth:I

    if-ge v9, v5, :cond_2

    and-int/lit8 v4, v4, -0xf

    :cond_2
    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    const/16 v9, 0xa2

    if-eq v0, v9, :cond_4

    const/16 v9, 0xa9

    if-eq v0, v9, :cond_4

    const/16 v9, 0xa8

    if-eq v0, v9, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    shl-int v0, v8, v0

    or-int/2addr v0, v3

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v3

    .line 797
    :goto_3
    new-instance v4, Landroid/graphics/Point;

    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    sget v9, Lcom/android/camera/Util;->sWindowHeight:I

    if-eqz v0, :cond_6

    const/16 v10, 0x780

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_6
    invoke-direct {v4, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 800
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v8

    if-nez v8, :cond_7

    .line 801
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v5, 0x2d0

    .line 802
    :cond_7
    iget v8, v4, Landroid/graphics/Point;->x:I

    if-le v8, v5, :cond_8

    .line 803
    iget v9, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v9, v5

    div-int/2addr v9, v8

    iput v9, v4, Landroid/graphics/Point;->y:I

    .line 804
    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 808
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v2

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 809
    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v16, v4

    int-to-double v3, v6

    div-double/2addr v8, v3

    sub-double v8, v8, p3

    .line 810
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v3, v3, v8

    if-gtz v3, :cond_c

    move-object/from16 v3, v16

    if-eqz v0, :cond_9

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v6, :cond_d

    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v6, v15, Landroid/hardware/Camera$Size;->width:I

    if-gt v4, v6, :cond_9

    goto :goto_5

    .line 814
    :cond_9
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v4, v6

    if-nez v4, :cond_a

    move-object v2, v15

    goto :goto_6

    .line 820
    :cond_a
    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    if-gt v6, v8, :cond_b

    iget v6, v15, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    if-gt v6, v8, :cond_b

    int-to-double v8, v4

    cmpg-double v6, v8, v11

    if-gez v6, :cond_b

    move-wide v11, v8

    move-object v10, v15

    :cond_b
    int-to-double v8, v4

    cmpg-double v4, v8, v13

    if-gez v4, :cond_d

    move-wide v13, v8

    move-object v2, v15

    goto :goto_5

    :cond_c
    move-object/from16 v3, v16

    :cond_d
    :goto_5
    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    move-object v3, v4

    move-object v15, v10

    :goto_6
    if-eqz v15, :cond_f

    goto :goto_7

    :cond_f
    move-object v15, v2

    :goto_7
    if-nez v15, :cond_11

    .line 841
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    .line 842
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "no preview size match the aspect ratio: %.2f"

    .line 841
    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 845
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v8, v3, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v6, v8

    int-to-double v8, v6

    cmpg-double v6, v8, v4

    if-gez v6, :cond_10

    move-object v15, v2

    move-wide v4, v8

    goto :goto_8

    :cond_11
    if-eqz v15, :cond_12

    .line 854
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v15, Landroid/hardware/Camera$Size;->width:I

    .line 855
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v15, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "best preview size: %dx%d"

    .line 854
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v15
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;DII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "null size list"

    .line 908
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 915
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 916
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v4, p1

    .line 917
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 918
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v4, v5, :cond_1

    :cond_3
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    if-gt v4, p3, :cond_1

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    if-gt v4, p4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_4
    if-nez v1, :cond_7

    const-string p1, "No picture size match the aspect ratio"

    .line 927
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_6

    .line 929
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    iget p3, v1, Landroid/hardware/Camera$Size;->width:I

    if-le p2, p3, :cond_5

    :cond_6
    move-object v1, p1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public static getParallelProcessImageTmpFolder()Ljava/lang/String;
    .locals 3

    .line 1223
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    const-string v2, ".tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1225
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/FileCompat;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1226
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/FileCompat;->mkdirs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 1231
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1232
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 1237
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 990
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 991
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 992
    aget v3, v0, v2

    .line 993
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 994
    aget p1, v0, p0

    sub-int/2addr p1, v1

    aput p1, v0, p0

    .line 995
    aget p0, v0, v2

    sub-int/2addr p0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public static getScreenInches(Landroid/content/Context;)D
    .locals 7

    .line 1609
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 1611
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1612
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1614
    sget p0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 1615
    sget p0, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v0

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 1616
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1617
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenInches="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraUtil"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getScreenLightColor(I)I
    .locals 5

    .line 2127
    invoke-static {}, Lcom/android/camera/Util;->initScreenLightColorMap()V

    .line 2128
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "CameraUtil"

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2132
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Util;->binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 2133
    sget-object v2, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2134
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 2136
    sget-object v2, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p0

    sget-object v3, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .line 2137
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p0, v3

    if-le v2, v3, :cond_2

    move v0, v4

    .line 2141
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenLightColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "K -> "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    sget-object p0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const-string p0, "color temperature list empty!"

    .line 2129
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getShootOrientation(Landroid/app/Activity;I)I
    .locals 0

    .line 659
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method public static getShootRotation(Landroid/app/Activity;F)F
    .locals 1

    .line 663
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    :goto_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    return p1
.end method

.method public static getTimeWaterMarkData(II)[B
    .locals 2

    .line 2208
    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v0

    .line 2209
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x44870000    # 1080.0f

    div-float/2addr p0, p1

    const p1, 0x41f0a2f9

    mul-float/2addr p0, p1

    const/4 p1, -0x1

    const/4 v1, 0x2

    .line 2208
    invoke-static {v0, p0, p1, v1}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object p0

    .line 2212
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmapData(Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getTimeWatermark()Ljava/lang/String;
    .locals 1

    .line 1466
    invoke-static {}, Lcom/android/camera/Device;->isSupportedNewStyleTimeWaterMark()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->getTimeWatermark(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeWatermark(Z)Ljava/lang/String;
    .locals 6

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 1472
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy/M/d"

    invoke-direct {p0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1473
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1474
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1476
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-M-d"

    invoke-direct {p0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1477
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1478
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, " "

    .line 1480
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 1482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1483
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Landroid/text/format/Time;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalWidth(Landroid/content/Context;)I
    .locals 1

    .line 2337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2338
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static declared-synchronized getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/android/camera/Util;

    monitor-enter v0

    .line 1373
    :try_start_0
    sget-object v1, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    sget-object v1, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    :cond_0
    sget-object p0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static indexOf([B[BI)I
    .locals 6

    const/4 v0, -0x1

    if-ltz p2, :cond_4

    .line 2273
    array-length v1, p0

    if-lt p2, v1, :cond_0

    goto :goto_3

    .line 2276
    :cond_0
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_4

    const/4 v1, 0x0

    move v3, v1

    .line 2278
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    add-int v4, p2, v3

    .line 2279
    aget-byte v4, p0, v4

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method

.method private static initScreenLightColorMap()V
    .locals 9

    .line 2039
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_8

    .line 2043
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getColorMapXmlMapFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2048
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2049
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 2050
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 2051
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2052
    :try_start_2
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v3, v0

    .line 2054
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v3, v0

    :goto_1
    const-string v4, "CameraUtil"

    if-nez v0, :cond_3

    .line 2059
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2060
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen_light"

    const-string v7, "xml"

    .line 2059
    invoke-virtual {v0, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "res/xml/screen_light.xml not found!"

    .line 2062
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2065
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 2069
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 2070
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, "screen"

    .line 2074
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2075
    sget-object v5, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    const-string v7, "vendor"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2076
    invoke-static {v0}, Lcom/android/camera/Util;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2078
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load screen light parameters for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    .line 2080
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "light"

    .line 2083
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v1, "CCT"

    .line 2086
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "R"

    .line 2087
    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "G"

    .line 2088
    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v7, "B"

    .line 2089
    invoke-static {v0, v7, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 2091
    sget-object v8, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    sget-object v1, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-static {v4, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2102
    :cond_8
    :goto_4
    invoke-static {v3}, Lcom/android/camera/Util;->safelyClose(Ljava/io/Closeable;)V

    .line 2103
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_9

    .line 2104
    :goto_5
    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    .line 2100
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2102
    invoke-static {v3}, Lcom/android/camera/Util;->safelyClose(Ljava/io/Closeable;)V

    .line 2103
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    return-void

    .line 2102
    :goto_7
    invoke-static {v3}, Lcom/android/camera/Util;->safelyClose(Ljava/io/Closeable;)V

    .line 2103
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_a

    .line 2104
    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    throw v1

    :cond_b
    :goto_8
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "ro.miui.notch"

    .line 258
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    .line 259
    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    .line 261
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "daisy_sprout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    sput-boolean v2, Lcom/android/camera/Util;->sIsNotchDevice:Z

    .line 264
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 266
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 267
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/camera/Util;->sPixelDensity:F

    .line 269
    new-instance v1, Lcom/android/camera/Util$ImageFileNamer;

    const v4, 0x7f0f0157

    .line 270
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 272
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 273
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 277
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v1, :cond_2

    .line 278
    sput v3, Lcom/android/camera/Util;->sWindowWidth:I

    .line 279
    sput v1, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_1

    .line 281
    :cond_2
    sput v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 282
    sput v3, Lcom/android/camera/Util;->sWindowHeight:I

    .line 284
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/Util;->sFullScreenExtraMargin:I

    .line 285
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-static {p0}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/android/camera/Util;->calcNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    :goto_2
    sput v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    .line 288
    sget-boolean v1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 289
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/2addr v4, v3

    sub-int/2addr v1, v4

    sput v1, Lcom/android/camera/Util;->sStatusBarHeight:I

    .line 290
    sget-boolean v1, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    if-eqz v1, :cond_4

    .line 291
    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    sget v4, Lcom/android/camera/Util;->sFullScreenExtraMargin:I

    sub-int/2addr v1, v4

    sput v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    .line 292
    sget v1, Lcom/android/camera/Util;->sStatusBarHeight:I

    div-int/2addr v4, v3

    add-int/2addr v1, v4

    sput v1, Lcom/android/camera/Util;->sStatusBarHeight:I

    .line 295
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result p0

    sput p0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    .line 297
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "windowSize=%dx%d density=%.2f"

    .line 297
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static insertImageToParallelService(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    const-string v0, "CameraUtil"

    .line 1945
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 1946
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "com.xiaomi.camera.parallelservice.provider.SpecialTypesProvider"

    .line 1947
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "processing"

    .line 1948
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1950
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1951
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "media_store_id"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "media_path"

    .line 1952
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Util;->getParallelProcessImageTmpFolder()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "media_tmp_path"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 1958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert result uri:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Error! insert to parallelservice failed!!!"

    .line 1960
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/Util$PackageInstallerListener;ZZ)V
    .locals 8

    const-string v0, "CameraUtil"

    if-eqz p0, :cond_4

    .line 1864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1870
    :try_start_0
    invoke-static {p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getPackageInstallObserver(Lcom/android/camera/Util$PackageInstallerListener;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "miui.content.pm.PreloadedAppPolicy"

    .line 1872
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "installPreloadedDataApp"

    .line 1874
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getInstallMethodDescription()Ljava/lang/String;

    move-result-object v5

    .line 1873
    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    move p3, v6

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    move p3, v5

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    const/4 p4, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v1

    aput-object p1, v7, v6

    aput-object v2, v7, v5

    const/4 p0, 0x3

    .line 1884
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v7, p0

    invoke-virtual {v4, v3, p4, v7}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    .line 1885
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "installPackage: result="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1887
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_3

    .line 1889
    invoke-interface {p2, p1, v1}, Lcom/android/camera/Util$PackageInstallerListener;->onPackageInstalled(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void

    .line 1865
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid params. pkgName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isAccessibilityEnable()Z
    .locals 2

    .line 2155
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2156
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAccessible()Z
    .locals 2

    .line 2146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isAccessibilityEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .line 219
    sget-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1914
    invoke-static {p0, p1}, Lcom/android/camera/GeneralUtils;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBackFingerSensor(Landroid/content/Context;)Z
    .locals 3

    .line 1707
    invoke-static {}, Lcom/android/camera/Device;->isFrontFingerSensor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1711
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "fingerprint"

    .line 1712
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_1

    .line 1714
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    return p0

    .line 1717
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isContains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1626
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v3, p0

    if-gez v4, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDebugOsBuild()Z
    .locals 2

    .line 1918
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x1b

    .line 1701
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1702
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1703
    invoke-static {}, Lcom/android/camera/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isForceCamera0()Z
    .locals 2

    .line 1746
    new-instance v0, Ljava/io/File;

    const-string v1, "force_camera_0"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isForceNameSuffix()Z
    .locals 2

    .line 1750
    sget-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Ljava/io/File;

    const-string v1, "force_name_suffix"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    .line 1753
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isFullScreenNavBarHidden(Landroid/content/Context;)Z
    .locals 1

    .line 1811
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInVideoCall(Landroid/app/Activity;)Z
    .locals 1

    .line 1694
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->checkPhoneStatePermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInVideoCall(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 1828
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLabOptionsVisible()Z
    .locals 2

    .line 1757
    sget-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Ljava/io/File;

    const-string v1, "lab_options_visible"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    .line 1760
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isLayoutRTL(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1218
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isMemoryRich(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    .line 1722
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1723
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1724
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1726
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x19000000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonUI()Z
    .locals 2

    const-string v0, "sys.power.nonui"

    const/4 v1, 0x0

    .line 1965
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNonUIEnabled()Z
    .locals 2

    const-string v0, "sys.power.nonui"

    .line 1969
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CameraUtil"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1832
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1837
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1839
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    :goto_0
    return p1

    :catch_0
    move-exception p0

    .line 1845
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1843
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    .line 1833
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid params. packageName="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPathExist(Ljava/lang/String;)Z
    .locals 1

    .line 1941
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProduceFocusInfoSuccess([B)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1380
    array-length v0, p0

    const/16 v1, 0x19

    if-ge v1, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShowDebugInfo()Z
    .locals 2

    const-string v0, "persist.camera.enable.log"

    .line 1524
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.debug.show_af"

    .line 1525
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.debug.show_awb"

    .line 1526
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.debug.show_aec"

    .line 1527
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.debug.autoscene"

    .line 1528
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.debug.hht"

    .line 1529
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isStringValueContained(Ljava/lang/Object;I)Z
    .locals 1

    .line 1633
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1634
    invoke-static {p0, p1}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1641
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1642
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isTimeout(JJJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-lez p0, :cond_0

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

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "r"

    .line 1003
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to open URI. URI="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1008
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Unexpected  occurs when opening URI: "

    .line 1013
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p0

    .line 1010
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException occurs when opening URI: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 424
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 425
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 426
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 428
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {v1, v4, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 434
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 437
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 438
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string v1, "Got oom exception "

    .line 441
    invoke-static {p1, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 2

    .line 1323
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1328
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1330
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1333
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    return p0
.end method

.method public static openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .line 569
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 571
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/camera/CameraHolder;->open(IZI)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 580
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "openCamera failed"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 583
    :cond_0
    throw p0

    .line 572
    :cond_1
    new-instance p0, Lcom/android/camera/CameraDisabledException;

    invoke-direct {p0}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw p0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 974
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 975
    aget v2, v1, v0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    aget v2, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    aget p0, v1, v3

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    aget p0, v1, v3

    .line 976
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1057
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 1059
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, p3

    const/high16 p2, 0x44fa0000    # 2000.0f

    div-float/2addr p1, p2

    int-to-float p3, p4

    div-float/2addr p3, p2

    .line 1061
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float p1, p5

    int-to-float p2, p6

    .line 1063
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    .line 1042
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1043
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1044
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1045
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    if-eqz p2, :cond_7

    :cond_0
    if-eqz p0, :cond_7

    .line 325
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 329
    invoke-virtual {v5, p2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit16 p1, p1, 0x168

    .line 330
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 336
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid degrees="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 332
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    int-to-float p1, p1

    .line 342
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 341
    invoke-virtual {v5, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 347
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 346
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_7

    .line 349
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :catch_0
    :cond_7
    return-object p0
.end method

.method public static roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    .line 738
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 739
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x2d

    .line 743
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method

.method public static safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    .line 1512
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1513
    invoke-virtual {v1, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "CameraUtil"

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safeDelete url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " where="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " selectionArgs="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1518
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static safelyClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2172
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static safelySleep(J)V
    .locals 0

    .line 2181
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sealInvisibleWatermark([BILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 447
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 448
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 449
    array-length p1, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 453
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result p0

    if-eqz p0, :cond_1

    .line 456
    invoke-static {p1, p0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 459
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/whetstone/steganography/SteganographyUtils;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static setAccessibilityFocusable(Landroid/view/View;Z)V
    .locals 2

    .line 2160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2162
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2164
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setBrightnessRampRate(I)V
    .locals 0

    const-string p0, "power"

    .line 1986
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    return-void
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 10

    .line 1159
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    if-eqz p1, :cond_3

    .line 1166
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1167
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-nez v8, :cond_1

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_3

    const-string v8, "CameraUtil"

    const-string v9, "Set gps location"

    .line 1171
    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1173
    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1174
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 1181
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1183
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 1186
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 1187
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    :cond_3
    return-void
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1200
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p1

    .line 1201
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1202
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, p2

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 1204
    :cond_0
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1207
    :goto_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method

.method public static setScreenEffect(Z)V
    .locals 1

    .line 1992
    invoke-static {}, Lcom/android/camera/Device;->isSupportScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    .line 1993
    invoke-static {v0, p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setScreenEffect(II)V

    :cond_0
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;II)V
    .locals 2

    .line 589
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 597
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x1010355

    .line 598
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 599
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 600
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0f00d9

    .line 601
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 2115
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 2111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static stringSparseArraysIndexOf(Landroid/util/SparseArray;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1931
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1932
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static updateCountryIso(Landroid/content/Context;)V
    .locals 2

    const-string v0, "phone"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 228
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "ro.miui.region"

    .line 230
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "country_detector"

    .line 233
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    .line 234
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 236
    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "antiBanding mCountryIso="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const-string v0, "camera_dump_parameters"

    .line 241
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Util;->sIsDumpLog:Z

    return-void
.end method
