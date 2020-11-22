.class public Lcom/android/camera/effect/BeautyParameters;
.super Ljava/lang/Object;
.source "BeautyParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;,
        Lcom/android/camera/effect/BeautyParameters$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautyParameters"

.field private static final sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field private static final sAdjustableTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

.field private static sInstance:Lcom/android/camera/effect/BeautyParameters;


# instance fields
.field private mBeautyLevel:I

.field private mBeautyValueRange:[I

.field private mCameraLevelParameters:[[F

.field private mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

.field private mExtraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFrontCamera:Z

.field private mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

.field private mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

.field private mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 51
    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/camera/effect/BeautyParameters;->sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 58
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/android/camera/effect/BeautyParameters$Type;

    .line 59
    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->CHIN_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->RISORIUS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->NECK_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->SMILE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->SLIM_NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->EYEBROW_DYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->PUPIL_LINE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->JELLY_LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    sget-object v2, Lcom/android/camera/effect/BeautyParameters$Type;->BLUSHER_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/android/camera/effect/BeautyParameters$Type;

    .line 66
    sget-object v0, Lcom/android/camera/effect/BeautyParameters$Type;->WHITEN_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v0, v1, v3

    sget-object v0, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v0, v1, v4

    sget-object v0, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v0, v1, v5

    sget-object v0, Lcom/android/camera/effect/BeautyParameters$Type;->SMOOTH_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    aput-object v0, v1, v6

    :goto_0
    sput-object v1, Lcom/android/camera/effect/BeautyParameters;->sAdjustableTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 84
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

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCameraLevelParameters:[[F

    .line 93
    sget-object v0, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    .line 94
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    .line 96
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateSupportedTypes()V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateParameters()V

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

.method private static convert(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Lcom/android/camera/effect/BeautyParameters$Type;
    .locals 1

    .line 258
    sget-object v0, Lcom/android/camera/effect/BeautyParameters$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 266
    sget-object p0, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 264
    :cond_1
    sget-object p0, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0

    .line 262
    :cond_2
    sget-object p0, Lcom/android/camera/effect/BeautyParameters$Type;->WHITEN_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0

    .line 260
    :cond_3
    sget-object p0, Lcom/android/camera/effect/BeautyParameters$Type;->SMOOTH_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0
.end method

.method private static getFaceBeautyRatioKey(Lcom/android/camera/effect/BeautyParameters$Type;)Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/android/camera/effect/BeautyParameters$1;->$SwitchMap$com$android$camera$effect$BeautyParameters$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "pref_beautify_eyebrow_dye_ratio_key"

    return-object p0

    :pswitch_1
    const-string p0, "pref_beautify_pupil_line_ratio_key"

    return-object p0

    :pswitch_2
    const-string p0, "pref_beautify_jelly_lips_ratio_key"

    return-object p0

    :pswitch_3
    const-string p0, "pref_beautify_blusher_ratio_key"

    return-object p0

    :pswitch_4
    const-string p0, "pref_beautify_slim_nose_ratio_key"

    return-object p0

    :pswitch_5
    const-string p0, "pref_beautify_smile_ratio_key"

    return-object p0

    :pswitch_6
    const-string p0, "pref_beautify_neck_ratio_key"

    return-object p0

    :pswitch_7
    const-string p0, "pref_beautify_chin_ratio_key"

    return-object p0

    :pswitch_8
    const-string p0, "pref_beautify_lips_ratio_key"

    return-object p0

    :pswitch_9
    const-string p0, "pref_beautify_risorius_ratio_key"

    return-object p0

    :pswitch_a
    const-string p0, "pref_beautify_nose_ratio_key"

    return-object p0

    :pswitch_b
    const-string p0, "pref_beautify_slim_face_ratio_key"

    return-object p0

    :pswitch_c
    const-string p0, "pref_beautify_enlarge_eye_ratio_key"

    return-object p0

    :pswitch_d
    const-string p0, "pref_beautify_skin_color_ratio_key"

    return-object p0

    :pswitch_e
    const-string p0, "pref_beautify_skin_smooth_ratio_key"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/BeautyParameters;
    .locals 2

    const-class v0, Lcom/android/camera/effect/BeautyParameters;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/android/camera/effect/BeautyParameters;

    invoke-direct {v1}, Lcom/android/camera/effect/BeautyParameters;-><init>()V

    sput-object v1, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;

    .line 123
    :cond_0
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-virtual {p1, p2}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getIntelligentLevelParams(I)Ljava/util/Map;

    move-result-object p2

    .line 380
    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getExtraSpan()F

    move-result v0

    .line 381
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 382
    invoke-static {v5}, Lcom/android/camera/effect/BeautyParameters;->convert(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v6

    .line 383
    invoke-virtual {p1, v5}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F

    move-result-object v7

    .line 384
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 385
    iget-object v8, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    .line 386
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v6

    .line 387
    aget v6, v7, v3

    const/4 v9, 0x1

    aget v7, v7, v9

    invoke-static {v8, v6, v7}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v6

    .line 388
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 390
    :cond_0
    sget-object v6, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " does not support type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private isMakeupStatusChanged()Z
    .locals 2

    .line 345
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isMakeupEnable()Z

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 352
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz p0, :cond_1

    .line 354
    invoke-interface {p0, v1}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyStatusChanged(Z)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private onBeautyLevelChanged(I)V
    .locals 3

    .line 397
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    .line 398
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeautyLevelChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz p0, :cond_0

    .line 402
    invoke-interface {p0}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyParameterChanged()V

    :cond_0
    return-void
.end method

.method private onBeautyParameterChanged(Lcom/android/camera/effect/BeautyParameters$Type;I)V
    .locals 3

    .line 408
    invoke-static {p1}, Lcom/android/camera/effect/BeautyParameters;->getFaceBeautyRatioKey(Lcom/android/camera/effect/BeautyParameters$Type;)Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    .line 410
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeautyParameterChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz p0, :cond_0

    .line 414
    invoke-interface {p0}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyParameterChanged()V

    :cond_0
    return-void
.end method

.method private setBeautyParameters()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    if-eqz v0, :cond_1

    .line 363
    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 365
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    if-eqz v0, :cond_1

    .line 369
    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 371
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateExtraTable()V
    .locals 10

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/effect/BeautyParameters;->getAdjustableTypes()[Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 190
    invoke-static {v4}, Lcom/android/camera/effect/BeautyParameters;->getFaceBeautyRatioKey(Lcom/android/camera/effect/BeautyParameters$Type;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 191
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, -0x1

    .line 192
    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 194
    iget-object v6, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    const/4 v7, 0x1

    aget v7, v6, v7

    aget v6, v6, v2

    sub-int/2addr v7, v6

    .line 195
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 196
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getBeautifyDefaultValue(Ljava/lang/String;)I

    move-result v5

    .line 197
    iget-object v6, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    aget v6, v6, v2

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v7

    .line 198
    sget-object v7, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateExtraTable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    .line 205
    :goto_1
    iget-object v5, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateParameters()V
    .locals 6

    .line 101
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 108
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    if-gez v0, :cond_2

    .line 110
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 111
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 112
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "reset invalid beauty level %d to %d"

    .line 112
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateExtraTable()V

    return-void
.end method

.method private updateSupportedTypes()V
    .locals 9

    .line 420
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSupportedTypes support types len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    array-length v2, v0

    if-lez v2, :cond_0

    .line 427
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 429
    :try_start_0
    invoke-static {v4}, Lcom/android/camera/effect/BeautyParameters$Type;->valueOf(Ljava/lang/String;)Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 431
    sget-object v6, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    sget-object v2, Lcom/android/camera/effect/BeautyParameters;->sAdjustableTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 440
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    const-string v1, "no type matched. roll back to full type"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->sAdjustableTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/BeautyParameters$Type;

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    goto :goto_2

    .line 444
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/effect/BeautyParameters$Type;

    iput-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    .line 445
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 447
    :goto_2
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSupportedTypes mSupportedTypes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAdjustableTypes()[Lcom/android/camera/effect/BeautyParameters$Type;
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mSupportedTypes:[Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0
.end method

.method public getCurrentLevel()I
    .locals 2

    .line 249
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 250
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_0
    iget p0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    return p0
.end method

.method public getCurrentProgress()I
    .locals 2

    .line 285
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 286
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCurrentType()Lcom/android/camera/effect/BeautyParameters$Type;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    return-object p0
.end method

.method public initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateParameters()V

    return-void
.end method

.method public isFaceBeautyOn()Z
    .locals 5

    .line 318
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 319
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 324
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 326
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object p0, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    sget-object v3, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_2
    return v1

    .line 337
    :cond_3
    iget p0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-lez p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 340
    :cond_5
    iget p0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-lez p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public isFrontCamera()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    return p0
.end method

.method public resetBeautyLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    return-void
.end method

.method public setIsFrontCamera(Z)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    if-eq v0, p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    .line 212
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateParameters()V

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 3

    .line 240
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 241
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 242
    iput p1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 243
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->isMakeupStatusChanged()Z

    .line 244
    invoke-direct {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->onBeautyLevelChanged(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->setBeautyParameters()V

    return-void
.end method

.method public setMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V
    .locals 1

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .line 166
    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v0, p1}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .line 294
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 295
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->isMakeupStatusChanged()Z

    if-eq v0, p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/BeautyParameters;->onBeautyParameterChanged(Lcom/android/camera/effect/BeautyParameters$Type;I)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->setBeautyParameters()V

    return-void
.end method

.method public setStickerMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V
    .locals 1

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .line 227
    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v0, p1}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setType(Lcom/android/camera/effect/BeautyParameters$Type;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    return-void
.end method

.method public setType(Lcom/miui/filtersdk/beauty/BeautyParameterType;)V
    .locals 0

    .line 273
    invoke-static {p1}, Lcom/android/camera/effect/BeautyParameters;->convert(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/android/camera/effect/BeautyParameters$Type;

    return-void
.end method
