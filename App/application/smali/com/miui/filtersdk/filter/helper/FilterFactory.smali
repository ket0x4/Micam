.class public Lcom/miui/filtersdk/filter/helper/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterFactory"


# direct methods
.method public static getFilterByType(Lcom/miui/filtersdk/filter/helper/FilterType;)Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 3

    .line 89
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilterByType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; ordinal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 228
    :pswitch_0
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/video/S-BYGONE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 226
    :pswitch_1
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/common/WHITEANDBLACK.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 223
    :pswitch_2
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/video/S-FOREST.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 221
    :pswitch_3
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/video/S-POLAROID.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 219
    :pswitch_4
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/video/S-YEARS.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 217
    :pswitch_5
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/video/S-FILM.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 214
    :pswitch_6
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-M-WHITEANDBLACK.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 212
    :pswitch_7
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-M-SEPIA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 210
    :pswitch_8
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-M-LILT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 208
    :pswitch_9
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-M-TEA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 205
    :pswitch_a
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-MOVIE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 203
    :pswitch_b
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-RIDDLE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 201
    :pswitch_c
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-STORY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 199
    :pswitch_d
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-WHITEANDBLACK.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 197
    :pswitch_e
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-MAZE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 195
    :pswitch_f
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-ROMANCE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 193
    :pswitch_10
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-PINK.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 191
    :pswitch_11
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-NATURE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 189
    :pswitch_12
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-HEART.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 187
    :pswitch_13
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-MINT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 185
    :pswitch_14
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-JAPANESE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 183
    :pswitch_15
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/beauty/B-FAIRYTALE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 181
    :pswitch_16
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-WARM.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 179
    :pswitch_17
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-SODA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 177
    :pswitch_18
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-QUIET.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 175
    :pswitch_19
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-LIVELY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 173
    :pswitch_1a
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-LIGHT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 171
    :pswitch_1b
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-LATTE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 169
    :pswitch_1c
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-KOIZORA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 167
    :pswitch_1d
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-FILM.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 165
    :pswitch_1e
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-FADE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 163
    :pswitch_1f
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-DELICACY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 161
    :pswitch_20
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-COOKIE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 159
    :pswitch_21
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string v0, "filter/normal/N-BERRY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 156
    :pswitch_22
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-DRIVING.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 154
    :pswitch_23
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-BEACH.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 152
    :pswitch_24
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-TEMPLE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 150
    :pswitch_25
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-MOTORBIKE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 148
    :pswitch_26
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CURRY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 146
    :pswitch_27
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-COW.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 144
    :pswitch_28
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-BUDDHA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 142
    :pswitch_29
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-JEWELRY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 140
    :pswitch_2a
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-HUMAN.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 138
    :pswitch_2b
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SILHOUETTE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 136
    :pswitch_2c
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-GLOBAL-NONE.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 134
    :pswitch_2d
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-OVERCAST.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 132
    :pswitch_2e
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CLOUD.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 130
    :pswitch_2f
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CITY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 128
    :pswitch_30
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-BUILDING.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 126
    :pswitch_31
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SUCCULENT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 124
    :pswitch_32
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-MAPLE_LEAVES.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 122
    :pswitch_33
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-GRASS.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 120
    :pswitch_34
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CAR.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 118
    :pswitch_35
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CANDLELIGHT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 116
    :pswitch_36
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-AUTUMN.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 114
    :pswitch_37
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SEA.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 112
    :pswitch_38
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SNOW.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 110
    :pswitch_39
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-NIGHT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 108
    :pswitch_3a
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-GREEN_PLANTS.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 106
    :pswitch_3b
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-DOG.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 104
    :pswitch_3c
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-CAT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 102
    :pswitch_3d
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SUNRISE_SUNSET.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 100
    :pswitch_3e
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-SKY.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 98
    :pswitch_3f
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-PPT.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 96
    :pswitch_40
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-FOOD.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 94
    :pswitch_41
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-FLOWER.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 92
    :pswitch_42
    new-instance p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string v0, "filter/aiscene/A-DOC.png"

    invoke-direct {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;
    .locals 6

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 242
    invoke-virtual {v4}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterScene()Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 243
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/miui/filtersdk/filter/helper/FilterType;

    .line 248
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/miui/filtersdk/filter/helper/FilterType;

    return-object p0
.end method
