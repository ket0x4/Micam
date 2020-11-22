.class public Lcom/android/camera/CameraStatUtil;
.super Ljava/lang/Object;
.source "CameraStatUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStatUtil"

.field private static sCameraModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExposureTimeLessThan1sToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterTypeToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPictureQualityIndexToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTriggerModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    .line 35
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa1

    const-string v2, "\u5c0f\u89c6\u9891"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa3

    const-string v2, "\u62cd\u7167"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa5

    const-string v2, "\u65b9\u5f62"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa6

    const-string v2, "\u5168\u666f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa7

    const-string v2, "\u624b\u52a8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xab

    const-string v2, "\u4eba\u50cf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    .line 47
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "\u62cd\u7167\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "\u97f3\u91cf\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "\u6307\u7eb9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "\u76f8\u673a\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "dpad\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x46

    const-string v2, "\u58f0\u63a7\u5feb\u95e8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x50

    const-string v2, "\u957f\u6309\u5c4f\u5e55"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u66dd\u5149\u73af"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    .line 64
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "\u6700\u4f4e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "\u66f4\u4f4e"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "\u4f4e"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string v3, "\u6807\u51c6"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x5

    const-string v3, "\u66f4\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x6

    const-string v3, "\u6700\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    .line 76
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    const-string v2, "1/1000s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x7d0

    const-string v2, "1/500s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/250s"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    const-string v2, "1/125s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x411b

    const-string v2, "1/60s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x8235

    const-string v2, "1/30s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1046b

    const-string v2, "1/15s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e848

    const-string v2, "1/8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x3d090

    const-string v2, "1/4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x7a120

    const-string v2, "1/2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    .line 93
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BERRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d46\u679c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_COOKIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u66f2\u5947"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_DELICACY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7f8e\u5473"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FADE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u892a\u8272"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_KOIZORA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u604b\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LATTE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u62ff\u94c1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d6e\u5149"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIVELY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u751f\u52a8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_QUIET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9759\u8c27"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_SODA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6c7d\u6c34"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WARM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6696\u9633"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_FAIRYTALE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7ae5\u8bdd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u65e5\u7cfb"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u8584\u8377"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5fc3\u5883"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u81ea\u7136"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7c89\u5ae9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_ROMANCE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d6a\u6f2b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MAZE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u8ff7\u5bab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u4eba\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u90a3\u4e9b\u5e74"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_POLAROID:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u62cd\u7acb\u5f97"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FOREST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5c0f\u68ee\u6797"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_BYGONE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5f80\u4e8b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static autoExposureToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 222
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01fe

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u5e73\u5747\u6d4b\u5149"

    return-object p0

    :cond_0
    const v1, 0x7f0f01fd

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u4e2d\u5fc3\u6743\u91cd"

    return-object p0

    :cond_1
    const v1, 0x7f0f01ff

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u4e2d\u70b9\u6d4b\u5149"

    return-object p0

    .line 235
    :cond_2
    sget-object v0, Lcom/android/camera/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected auto exposure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "others"

    return-object p0
.end method

.method public static burstShotNumToName(I)Ljava/lang/String;
    .locals 0

    .line 191
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static contrastToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f03000f

    .line 331
    invoke-static {v0, p0}, Lcom/android/camera/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static divideTo10Section(I)Ljava/lang/String;
    .locals 0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 195
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "90+"

    return-object p0

    :pswitch_0
    const-string p0, "80+"

    return-object p0

    :pswitch_1
    const-string p0, "70+"

    return-object p0

    :pswitch_2
    const-string p0, "60+"

    return-object p0

    :pswitch_3
    const-string p0, "50+"

    return-object p0

    :pswitch_4
    const-string p0, "40+"

    return-object p0

    :pswitch_5
    const-string p0, "30+"

    return-object p0

    :pswitch_6
    const-string p0, "20+"

    return-object p0

    :pswitch_7
    const-string p0, "10+"

    return-object p0

    :pswitch_8
    const-string p0, "1+"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 242
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4240

    if-ge v0, v1, :cond_0

    .line 244
    sget-object v1, Lcom/android/camera/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 249
    :cond_0
    div-int/2addr v0, v1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 253
    :catch_0
    sget-object v0, Lcom/android/camera/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    sget-object v0, Lcom/android/camera/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "auto"

    return-object p0
.end method

.method public static faceBeautyRatioToName(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filterIdToName(I)Ljava/lang/String;
    .locals 4

    .line 124
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const-string v1, "none"

    if-ne v0, p0, :cond_0

    return-object v1

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v0

    .line 134
    sget-object v2, Lcom/android/camera/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 142
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected filter id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static focusPositionToName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne v0, p0, :cond_0

    const-string p0, "auto"

    return-object p0

    :cond_0
    sub-int/2addr v0, p0

    .line 289
    div-int/lit8 v0, v0, 0xa

    .line 290
    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDualZoomName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    .line 306
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result p0

    .line 307
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->zoomIndexToName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tele"

    .line 303
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2x"

    goto :goto_0

    :cond_1
    const-string p0, "1x"

    :goto_0
    return-object p0
.end method

.method private static indexOfString([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 375
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 376
    aget-object v1, p0, v0

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

.method public static isoToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "auto"

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 274
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x3

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static modeIdToName(I)Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "\u5f55\u50cf"

    :cond_0
    return-object p0
.end method

.method private static pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 358
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 359
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 363
    invoke-static {p0, p1}, Lcom/android/camera/CameraStatUtil;->indexOfString([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 365
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length p0, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 367
    sget-object p0, Lcom/android/camera/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "others"

    return-object p0

    .line 360
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture quality array size is smaller than values size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(JI)J
    .locals 2

    if-gtz p2, :cond_0

    return-wide p0

    .line 460
    :cond_0
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static saturationToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030033

    .line 335
    invoke-static {v0, p0}, Lcom/android/camera/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sharpnessToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030038

    .line 339
    invoke-static {v0, p0}, Lcom/android/camera/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeLapseIntervalToName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_0

    .line 441
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p0, p0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.2fs"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%ds"

    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 448
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 451
    aget-object v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 453
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCameraError(Ljava/lang/String;)V
    .locals 3

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 397
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6a21\u5f0f"

    .line 400
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 402
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "camera_hardware_error"

    .line 403
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVoiceControl(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 412
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 415
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 420
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraModeId()I

    move-result p0

    if-nez v1, :cond_2

    const-string v1, "\u540e\u6444"

    goto :goto_1

    :cond_2
    const-string v1, "\u524d\u6444"

    :goto_1
    const-string v2, "\u524d\u540e\u6444"

    .line 421
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "voice_assist_call_event"

    .line 424
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomAdjusted(Ljava/lang/String;)V
    .locals 3

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 430
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6a21\u5f0f"

    .line 433
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 435
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "zoom_adjusted"

    .line 436
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static triggerModeToName(I)Ljava/lang/String;
    .locals 1

    .line 295
    sget-object v0, Lcom/android/camera/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static videoQualityToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 159
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006a

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 162
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 163
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    .line 178
    sget-object v0, Lcom/android/camera/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected video quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "others"

    return-object p0

    :cond_2
    const-string p0, "480p"

    return-object p0

    :cond_3
    const-string p0, "720p"

    return-object p0

    :cond_4
    const-string p0, "1080p"

    return-object p0

    :cond_5
    const-string p0, "4k"

    return-object p0
.end method

.method public static zoomIndexToName(I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "1x"

    return-object p0

    .line 316
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    if-lez p0, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xc8

    if-ne v0, p0, :cond_1

    const-string p0, "2x"

    return-object p0

    .line 322
    :cond_1
    div-int/lit8 p0, p0, 0xa

    .line 323
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float p0, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.1fx"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "others"

    return-object p0
.end method
