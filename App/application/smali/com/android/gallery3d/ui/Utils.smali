.class public Lcom/android/gallery3d/ui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 38
    sput-object v1, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    .line 40
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "userdebug"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/gallery3d/ui/Utils;->IS_DEBUG_BUILD:Z

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    int-to-long v4, v1

    move-wide v5, v4

    move v4, v2

    :goto_3
    const/16 v7, 0x8

    if-ge v4, v7, :cond_3

    long-to-int v7, v5

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    const-wide v7, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_4

    :cond_2
    const-wide/16 v7, 0x0

    :goto_4
    shr-long/2addr v5, v3

    xor-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 150
    :cond_3
    sget-object v4, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Utils"

    const-string v1, "fail to close"

    .line 205
    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static nextPowerOf2(I)I
    .locals 1

    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
