.class public Lcom/android/camera/effect/ArcsoftBeautyProcessor;
.super Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
.source "ArcsoftBeautyProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArcsoftBeautyProcessor"


# instance fields
.field private mEnlargeEyeRatio:I

.field private mShrinkFaceRatio:I

.field private mSmoothStrength:I

.field private mWhiteStrength:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setExtraSpan(F)V

    const/4 v0, 0x6

    new-array v0, v0, [[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 25
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mLevelParameters:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data

    :array_3
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_4
    .array-data 4
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private dumpParams()V
    .locals 5

    .line 101
    sget-object v0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mWhiteStrength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget p0, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mSmoothStrength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x3

    aput-object p0, v2, v3

    const-string p0, "beautyParams: shrinkFace=%d largeEye=%d whiteSkin=%d smoothSkin=%d"

    .line 101
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDegreeByValue(Lcom/miui/filtersdk/beauty/BeautyParameterType;F)I
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F

    move-result-object p0

    .line 108
    array-length p1, p0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 109
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 112
    aget p1, p0, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x1

    aget p0, p0, p1

    div-float/2addr p2, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private updateBeautyParameter(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 81
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->getDegreeByValue(Lcom/miui/filtersdk/beauty/BeautyParameterType;F)I

    move-result p2

    .line 82
    sget-object v0, Lcom/android/camera/effect/ArcsoftBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iput p2, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mSmoothStrength:I

    goto :goto_1

    .line 87
    :cond_2
    iput p2, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mWhiteStrength:I

    goto :goto_1

    .line 93
    :cond_3
    iput p2, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    goto :goto_1

    .line 90
    :cond_4
    iput p2, p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    :goto_1
    return-void
.end method


# virtual methods
.method public beautify([BII)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 44
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F
    .locals 1

    .line 54
    sget-object p0, Lcom/android/camera/effect/ArcsoftBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p0, p1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    :cond_0
    new-array p0, v0, [F

    .line 59
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method

.method public init(II)V
    .locals 0

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setBeautyParamsDegree(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->updateBeautyParameter(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->dumpParams()V

    return-void
.end method
