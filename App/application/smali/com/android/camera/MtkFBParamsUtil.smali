.class public Lcom/android/camera/MtkFBParamsUtil;
.super Ljava/lang/Object;
.source "MtkFBParamsUtil.java"


# static fields
.field private static final ADJUSTMENTS:Ljava/lang/StringBuilder;

.field private static final BASE_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    .line 36
    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    const-string v1, "1200,1200,1201,1201,1200,1210,"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2301,2411,2412,2412,2311,2421,"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3411,3522,3623,3623,3512,3622,"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1200,1211,1311,1311,1211,1311,"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2301,2512,2522,2522,2412,2522,"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3511,3723,3734,3734,3623,3733,"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xa
        -0xb
        -0x7
        -0xc
        -0x8
        -0x8
        -0x2
        -0xc
        -0x4
        0x0
        0x0
        -0x9
    .end array-data
.end method

.method private static adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 93
    :cond_0
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    invoke-static {v0}, Lcom/android/camera/MtkFBParamsUtil;->getGenderIndex(F)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 98
    iget p2, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    goto :goto_0

    :cond_2
    iget p2, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x3

    .line 101
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x6

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0xa

    .line 103
    invoke-static {p2}, Lcom/android/camera/MtkFBParamsUtil;->getAgeIndex(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr v0, p2

    .line 105
    sget-object p2, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    add-int/2addr p2, p1

    invoke-static {p2}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 107
    sget-object p1, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 109
    sget-object p1, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    sget-object p2, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int/2addr p1, p2

    invoke-static {p1}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 111
    sget-object p1, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    sget-object p2, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int/2addr p1, p2

    invoke-static {p1}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    :cond_4
    :goto_2
    return-void
.end method

.method public static getAdvancedValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;II)V
    .locals 1

    const-string v0, "pref_beautify_skin_color_ratio_key"

    .line 54
    invoke-static {v0, p1, p2}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    .line 55
    invoke-static {v0, p1, p2}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    const-string v0, "pref_beautify_slim_face_ratio_key"

    .line 56
    invoke-static {v0, p1, p2}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    const-string v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 57
    invoke-static {v0, p1, p2}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void
.end method

.method private static getAgeIndex(F)I
    .locals 1

    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0
.end method

.method private static getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 80
    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    aget v1, v0, p1

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    add-int/lit8 v1, p1, 0x1

    .line 81
    aget v1, v0, v1

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int/lit8 v1, p1, 0x2

    .line 82
    aget v1, v0, v1

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int/lit8 p1, p1, 0x3

    .line 83
    aget p1, v0, p1

    iput p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void
.end method

.method private static getGenderIndex(F)I
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/android/camera/MtkFBParamsUtil;->getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/camera/MtkFBParamsUtil;->adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    return-void
.end method

.method private static trimValue(I)I
    .locals 1

    const/16 v0, -0xc

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xc

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method
