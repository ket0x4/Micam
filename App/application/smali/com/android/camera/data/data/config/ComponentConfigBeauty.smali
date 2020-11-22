.class public Lcom/android/camera/data/data/config/ComponentConfigBeauty;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBeauty.java"


# static fields
.field public static final BEAUTY_CLOSE:Ljava/lang/String;

.field public static final BEAUTY_DEEP:Ljava/lang/String;

.field public static final BEAUTY_DEEP_LEGACY:Ljava/lang/String;

.field public static final BEAUTY_LOW:Ljava/lang/String;

.field public static final BEAUTY_LOW_LEGACY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ComponentConfigBeauty"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 7

    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 55
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    const v2, 0x7f0f03aa

    const v3, 0x7f0800a7

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p1

    const v0, 0x7f0f0220

    const v1, 0x7f0800a5

    const v4, 0x7f0800a6

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-direct {p1, v3, v1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    invoke-direct {p1, v3, v1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object p0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_1
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 104
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyDefaultValue()Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset invalid beauty level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    goto :goto_1

    .line 109
    :cond_3
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 112
    :cond_4
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 114
    :cond_5
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_6
    :goto_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    :cond_7
    :goto_1
    return-object p0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 89
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "pref_video_face_beauty_key"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_face_beauty_key"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 139
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    return-object p0

    .line 141
    :cond_0
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    return-object p0

    .line 143
    :cond_1
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 144
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object p0

    .line 147
    :cond_2
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    return-object p0

    .line 149
    :cond_3
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    return-object p0

    .line 151
    :cond_4
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 152
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object p0

    .line 155
    :cond_5
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object p0
.end method

.method public isClosed(I)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isLastOn(I)Z
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setClosed(ZI)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 127
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result p0

    .line 128
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/BeautyParameters;->setLevel(I)V

    return-void
.end method
