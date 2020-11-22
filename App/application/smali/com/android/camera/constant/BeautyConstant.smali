.class public Lcom/android/camera/constant/BeautyConstant;
.super Ljava/lang/Object;
.source "BeautyConstant.java"


# static fields
.field public static final LEVEL_ADVANCED:Ljava/lang/String;

.field public static final LEVEL_CLOSE:Ljava/lang/String;

.field public static final LEVEL_HIGH:Ljava/lang/String;

.field public static final LEVEL_LOW:Ljava/lang/String;

.field public static final LEVEL_MEDIUM:Ljava/lang/String;

.field public static final LEVEL_XHIGH:Ljava/lang/String;

.field public static final LEVEL_XXHIGH:Ljava/lang/String;

.field public static final LEVEL_XXXHIGH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03a6

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    const v1, 0x7f0f03a8

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    const v1, 0x7f0f03a9

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    const v1, 0x7f0f03a7

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    const v1, 0x7f0f03ab

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    const v1, 0x7f0f03ac

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    const v1, 0x7f0f03ad

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    const v1, 0x7f0f03a5

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    return-void
.end method
