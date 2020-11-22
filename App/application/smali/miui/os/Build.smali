.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final HAS_CUST_PARTITION:Z

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CDMA:Z

.field public static final IS_CM_COOPERATION:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CTA_BUILD:Z

.field public static final IS_CTS_BUILD:Z

.field public static final IS_CT_CUSTOMIZATION:Z

.field public static final IS_CT_CUSTOMIZATION_TEST:Z

.field public static final IS_CU_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_FUNCTION_LIMITED:Z

.field public static final IS_GLOBAL_BUILD:Z

.field public static final IS_HONGMI:Z

.field public static final IS_HONGMI2_TDSCDMA:Z

.field public static final IS_HONGMI_THREE:Z

.field public static final IS_HONGMI_THREEX:Z

.field public static final IS_HONGMI_THREEX_CM:Z

.field public static final IS_HONGMI_THREEX_CT:Z

.field public static final IS_HONGMI_THREEX_CU:Z

.field public static final IS_HONGMI_THREE_LTE:Z

.field public static final IS_HONGMI_THREE_LTE_CM:Z

.field public static final IS_HONGMI_THREE_LTE_CU:Z

.field public static final IS_HONGMI_TWO:Z

.field public static final IS_HONGMI_TWOS_LTE_MTK:Z

.field public static final IS_HONGMI_TWOX:Z

.field public static final IS_HONGMI_TWOX_BR:Z

.field public static final IS_HONGMI_TWOX_CM:Z

.field public static final IS_HONGMI_TWOX_CT:Z

.field public static final IS_HONGMI_TWOX_CU:Z

.field public static final IS_HONGMI_TWOX_IN:Z

.field public static final IS_HONGMI_TWOX_LC:Z

.field public static final IS_HONGMI_TWOX_SA:Z

.field public static final IS_HONGMI_TWO_A:Z

.field public static final IS_HONGMI_TWO_S:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MI1S:Z

.field public static final IS_MI2A:Z

.field public static final IS_MIFIVE:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_MIFOUR_CDMA:Z

.field public static final IS_MIFOUR_LTE_CM:Z

.field public static final IS_MIFOUR_LTE_CT:Z

.field public static final IS_MIFOUR_LTE_CU:Z

.field public static final IS_MIFOUR_LTE_INDIA:Z

.field public static final IS_MIFOUR_LTE_SEASA:Z

.field public static final IS_MIONE:Z

.field public static final IS_MIONE_CDMA:Z

.field public static final IS_MIPAD:Z

.field public static final IS_MITHREE:Z

.field public static final IS_MITHREE_CDMA:Z

.field public static final IS_MITHREE_TDSCDMA:Z

.field public static final IS_MITWO:Z

.field public static final IS_MITWO_CDMA:Z

.field public static final IS_MITWO_TDSCDMA:Z

.field public static final IS_N7:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_PRO_DEVICE:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field public static final IS_TDS_CDMA:Z

.field public static final IS_XIAOMI:Z

.field public static final USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mione_plus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 1S"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 1SC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 48
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "aries"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "taurus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "taurus_td"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 2A"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 2A TD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    sput-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    .line 54
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "pisces"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "cancro"

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MI 3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    goto :goto_9

    :cond_9
    :goto_8
    move v0, v2

    :goto_9
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    .line 57
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    .line 60
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "virgo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    .line 63
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move v0, v1

    goto :goto_c

    :cond_c
    :goto_b
    move v0, v2

    :goto_c
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 69
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mocha"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    .line 71
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "flo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_N7:Z

    .line 78
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "armani"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    .line 81
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014011"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014012"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v0, v1

    goto :goto_e

    :cond_e
    :goto_d
    move v0, v2

    :goto_e
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    .line 84
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014501"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 87
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2013022"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2013023"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    move v0, v1

    goto :goto_10

    :cond_10
    :goto_f
    move v0, v2

    :goto_10
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    .line 91
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lcsh92_wet_jb9"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lcsh92_wet_tdd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    move v0, v1

    goto :goto_12

    :cond_12
    :goto_11
    move v0, v2

    :goto_12
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    .line 94
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "dior"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    .line 97
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_13

    const-string v0, "ro.boot.modem"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTETD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_13

    :cond_13
    move v0, v1

    :goto_13
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CM:Z

    .line 100
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_14

    const-string v0, "ro.boot.modem"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_14

    :cond_14
    move v0, v1

    :goto_14
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CU:Z

    .line 103
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014811"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    .line 106
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014812"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014821"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_15

    :cond_15
    move v0, v1

    goto :goto_16

    :cond_16
    :goto_15
    move v0, v2

    :goto_16
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    .line 109
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014813"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014112"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_17

    :cond_17
    move v0, v1

    goto :goto_18

    :cond_18
    :goto_17
    move v0, v2

    :goto_18
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    .line 112
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014818"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    .line 115
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014817"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    .line 118
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014819"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    .line 121
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    if-eqz v0, :cond_19

    goto :goto_19

    :cond_19
    move v0, v1

    goto :goto_1a

    :cond_1a
    :goto_19
    move v0, v2

    :goto_1a
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    .line 124
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lte26007"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    .line 127
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "gucci"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    .line 130
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v4, "persist.sys.modem"

    const-string v5, "cm"

    if-eqz v0, :cond_1b

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1b

    :cond_1b
    move v0, v1

    :goto_1b
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CM:Z

    .line 133
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v6, "cu"

    if-eqz v0, :cond_1c

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1c

    :cond_1c
    move v0, v1

    :goto_1c
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CU:Z

    .line 136
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v7, "ct"

    if-eqz v0, :cond_1d

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    goto :goto_1d

    :cond_1d
    move v0, v1

    :goto_1d
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CT:Z

    .line 140
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_1e

    goto :goto_1e

    :cond_1e
    move v0, v1

    goto :goto_1f

    :cond_1f
    :goto_1e
    move v0, v2

    :goto_1f
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    .line 147
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lmiui/os/Build;->hasMsm8660Property()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_20

    :cond_20
    move v0, v1

    :goto_20
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    .line 150
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    const-string v4, "persist.radio.modem"

    if-eqz v0, :cond_21

    .line 151
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "CDMA"

    .line 150
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_21

    :cond_21
    move v0, v1

    :goto_21
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    .line 154
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "MI 3C"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    goto :goto_22

    :cond_22
    move v0, v1

    :goto_22
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    .line 157
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_23

    .line 158
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "CDMA"

    .line 157
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_23

    :cond_23
    move v0, v1

    :goto_23
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    .line 161
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_24

    .line 162
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TD"

    .line 161
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_24

    :cond_24
    move v0, v1

    :goto_24
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    .line 165
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_25

    .line 166
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TD"

    .line 165
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    goto :goto_25

    :cond_25
    move v0, v1

    :goto_25
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    .line 169
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_26

    .line 170
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CMCC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v2

    goto :goto_26

    :cond_26
    move v0, v1

    :goto_26
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    .line 173
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_27

    .line 174
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CU"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_27

    :cond_27
    move v0, v1

    :goto_27
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    .line 177
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_28

    .line 178
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    goto :goto_28

    :cond_28
    move v0, v1

    :goto_28
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    .line 181
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_29

    .line 182
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-India"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_29

    :cond_29
    move v0, v1

    :goto_29
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    .line 185
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2a

    .line 186
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTE-SEAsa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_2a

    :cond_2a
    move v0, v1

    :goto_2a
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    .line 189
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI2_TDSCDMA:Z

    .line 192
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v0, :cond_2b

    goto :goto_2b

    :cond_2b
    move v0, v1

    goto :goto_2c

    :cond_2c
    :goto_2b
    move v0, v2

    :goto_2c
    sput-boolean v0, Lmiui/os/Build;->IS_CDMA:Z

    .line 195
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI2_TDSCDMA:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v0, :cond_2d

    goto :goto_2d

    :cond_2d
    move v0, v1

    goto :goto_2e

    :cond_2e
    :goto_2d
    move v0, v2

    :goto_2e
    sput-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    const-string v0, "ro.carrier.name"

    .line 199
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 203
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ro.miui.cust_variant"

    if-eqz v3, :cond_30

    .line 204
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "cn_chinamobile"

    .line 203
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 205
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "cn_cta"

    .line 204
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2f
    move v3, v2

    goto :goto_2f

    :cond_30
    move v3, v1

    :goto_2f
    sput-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 209
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 210
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn_cmcooperation"

    .line 209
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v2

    goto :goto_30

    :cond_31
    move v3, v1

    :goto_30
    sput-boolean v3, Lmiui/os/Build;->IS_CM_COOPERATION:Z

    .line 214
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 217
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v2

    goto :goto_31

    :cond_32
    move v0, v1

    :goto_31
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 222
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_33

    move v0, v2

    goto :goto_32

    :cond_33
    move v0, v1

    :goto_32
    sput-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 226
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_34

    goto :goto_33

    :cond_34
    move v0, v1

    goto :goto_34

    :cond_35
    :goto_33
    move v0, v2

    :goto_34
    sput-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    .line 229
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "_alpha"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    const-string v4, "ro.miui.cts"

    .line 233
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    .line 232
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v9, "persist.sys.miui_optimization"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    const-string v4, "ro.miui.cta"

    .line 237
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_CTA_BUILD:Z

    const-string v4, "ro.cust.test"

    .line 241
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 245
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    .line 249
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    const-string v4, "persist.sys.func_limit_switch"

    .line 253
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_FUNCTION_LIMITED:Z

    .line 287
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_35

    :cond_36
    move v4, v1

    goto :goto_36

    :cond_37
    :goto_35
    move v4, v2

    :goto_36
    sput-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 290
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_global"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 295
    invoke-static {}, Lmiui/os/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    .line 342
    invoke-static {}, Lmiui/os/Build;->getUserdataImageVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Build;->USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

    const-string v0, "ro.debuggable"

    .line 376
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_38

    goto :goto_37

    :cond_38
    move v2, v1

    :goto_37
    sput-boolean v2, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    const-string v0, "ro.miui.has_cust_partition"

    .line 382
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    const-string v0, "ro.miui.cust_device"

    .line 387
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_pro"

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_PRO_DEVICE:Z

    return-void
.end method

.method private static getUserdataImageVersionCode()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "ro.miui.userdata_version"

    .line 352
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Unavailable"

    return-object v0

    .line 358
    :cond_0
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    const-string v2, "global"

    goto :goto_0

    :cond_1
    const-string v2, "cn"

    :goto_0
    const-string v3, "ro.carrier.name"

    .line 364
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const-string v1, "%s(%s%s)"

    .line 369
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasMsm8660Property()Z
    .locals 2

    const-string v0, "ro.soc.name"

    .line 299
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8660"

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unkown"

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

.method private static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 305
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
