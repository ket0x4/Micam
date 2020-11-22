.class public Lcom/android/camera/effect/BeautyInfoFactory;
.super Ljava/lang/Object;
.source "BeautyInfoFactory.java"


# static fields
.field public static final TIARE_FILTER_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/camera/effect/BeautyInfoFactory$1;

    invoke-direct {v0}, Lcom/android/camera/effect/BeautyInfoFactory$1;-><init>()V

    sput-object v0, Lcom/android/camera/effect/BeautyInfoFactory;->TIARE_FILTER_LIST:Ljava/util/Set;

    return-void
.end method

.method public static getFilterDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I
    .locals 2

    .line 153
    sget-object v0, Lcom/android/camera/effect/BeautyInfoFactory$2;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/16 v1, 0x46

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x64

    return p0

    :pswitch_0
    const/16 p0, 0x50

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    const/16 p0, 0x3c

    return p0

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getIndiaFilterDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public static initBeautyFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f0f0236

    const v5, 0x7f0801b3

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 41
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v8, v1, v4

    .line 42
    sget-boolean v9, Lcom/android/camera/Device;->IS_C3G:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/camera/effect/BeautyInfoFactory;->TIARE_FILTER_LIST:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 46
    :cond_0
    sget-object v9, Lcom/android/camera/effect/BeautyInfoFactory$2;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0x96

    const v5, 0x7f0f01bc

    const v6, 0x7f0801ab

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x8c

    const v5, 0x7f0f01c9

    const v6, 0x7f0801ad

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x82

    const v5, 0x7f0f01c1

    const v6, 0x7f0801ac

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x78

    const v5, 0x7f0f01cb

    const v6, 0x7f0801ae

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x6e

    const v5, 0x7f0f01c4

    const v6, 0x7f0801b1

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x64

    const v5, 0x7f0f01c7

    const v6, 0x7f0801b5

    goto :goto_1

    :pswitch_6
    const/16 v7, 0x50

    const v5, 0x7f0f01c2

    const v6, 0x7f0801af

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x32

    const v5, 0x7f0f01bf

    const v6, 0x7f0801a9

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x28

    const v5, 0x7f0f01ca

    const v6, 0x7f0801b7

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x1e

    const v5, 0x7f0f01c6

    const v6, 0x7f0801b4

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x14

    const v5, 0x7f0f01c0

    const v6, 0x7f0801aa

    goto :goto_1

    :pswitch_b
    const/16 v7, 0xa

    const v5, 0x7f0f01c5

    const v6, 0x7f0801b2

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    .line 137
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x2

    .line 138
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_1
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 144
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static initIndiaBeautyFilterInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
