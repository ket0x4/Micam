.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static BOTTOM_CONTROL_HEIGHT:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

.field public static final TOP_CONTROL_HEIGHT:I

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z

.field private static sEdgePhotoEnable:Z

.field private static sFaceBeautyLevelToValue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGoolgeLensAvilability:Z

.field public static sRemindMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSceneToFlash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportedVideoHighFrameRateModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static supportedHfrSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 304
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002c

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    .line 307
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070115

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 309
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070116

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 311
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 312
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    .line 316
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v2, "auto"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v2, "portrait"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v2, "off"

    const-string v3, "landscape"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v3, "sports"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night-portrait"

    const-string v3, "on"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "beach"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "snow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sunset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "fireworks"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "backlight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "flowers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string v1, "pref_camera_mode_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string v1, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 335
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 341
    :cond_1
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1183
    :goto_0
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    return-void
.end method

.method public static addPopupTipBeautyIntroShowTimes()V
    .locals 3

    .line 2258
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_popup_tip_beauty_intro_show_times_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2259
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method private static beautyLevelToIntelligentValue(I)Ljava/lang/String;
    .locals 2

    .line 1814
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid faceBeautyLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static cancelRemind(Ljava/lang/String;)V
    .locals 2

    .line 2085
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_remind"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 2088
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    return-void
.end method

.method public static checkLensAvailability(Landroid/content/Context;)Z
    .locals 5

    .line 1326
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1327
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->isMiLensSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v0, "com.xiaomi.lens"

    .line 1330
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 1331
    invoke-static {v0, v0}, Lcom/android/camera/Util;->getAILensIntent(II)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/Util;->isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 1333
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 1336
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v3, 0x7f050001

    .line 1337
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "pref_camera_ai_detect_enable_key"

    .line 1336
    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    const-string v0, "com.google.ar.lens"

    .line 1341
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lcom/android/camera/CameraSettings;->sGoolgeLensAvilability:Z

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method public static get4kProfile()I
    .locals 1

    .line 1011
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v0, 0x7f0f03f9

    .line 1014
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAiSceneOpen()Z
    .locals 3

    .line 1260
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    invoke-static {}, Lcom/android/camera/Device;->isPortraitModeSupportAiScene()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1263
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v2, "pref_camera_ai_scene_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static getAntiBanding()Ljava/lang/String;
    .locals 3

    .line 2233
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f0f01ea

    .line 2235
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_antibanding_key"

    .line 2233
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAspectRatio(II)I
    .locals 1

    .line 416
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 418
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio18_9(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getBeautifyDefaultValue(Ljava/lang/String;)I
    .locals 2

    .line 1837
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_beautify_skin_color_ratio_key"

    .line 1841
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0f03d9

    goto :goto_0

    :cond_1
    const-string v0, "pref_beautify_slim_face_ratio_key"

    .line 1843
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0f03de

    goto :goto_0

    :cond_2
    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    .line 1845
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f0f03e0

    goto :goto_0

    :cond_3
    const-string v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 1847
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f0f03db

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_0
    if-eqz p0, :cond_5

    .line 1854
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1856
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v1
.end method

.method public static getBeautifyDetailValue(Ljava/lang/String;II)I
    .locals 1

    .line 1864
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 1865
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1867
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getBeautifyDefaultValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x32

    .line 1870
    div-int/lit8 p2, p2, 0x64

    add-int p0, p2, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBeautifyValueRange()[I
    .locals 2

    .line 1877
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    .line 1878
    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    new-array v0, v1, [I

    .line 1880
    fill-array-data v0, :array_1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0xc
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa
    .end array-data
.end method

.method public static getCameraId()I
    .locals 1

    .line 955
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public static getCameraZoomMode(I)Ljava/lang/String;
    .locals 1

    .line 2106
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2107
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorEffect()Ljava/lang/String;
    .locals 3

    .line 1500
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f0222

    .line 1502
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_coloreffect_key"

    .line 1500
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContrast()Ljava/lang/String;
    .locals 4

    const v0, 0x7f0f0243

    .line 2197
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_qc_camera_contrast_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f03000f

    .line 2200
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset invalid contrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetContrast()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getCountDownTimes()I
    .locals 1

    .line 1675
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getTimer()I

    move-result v0

    return v0
.end method

.method public static getDefaultPreferenceId(I)I
    .locals 1

    const v0, 0x7f050004

    if-eq p0, v0, :cond_2

    const v0, 0x7f0f01ea

    if-eq p0, v0, :cond_1

    const v0, 0x7f0f03f0

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1217
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isFrontVideoQualityShouldBe1080P()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f0f03c4

    return p0

    .line 1211
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f0f01e9

    return p0

    .line 1223
    :cond_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_X5:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/camera/Device;->IS_X7:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return p0

    :cond_4
    :goto_1
    const p0, 0x7f050005

    return p0
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 2

    const-string v0, "pref_camera_coloreffect_key"

    .line 1414
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "pref_camera_shader_coloreffect_key"

    .line 1415
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "pref_camera_hand_night_key"

    .line 1417
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0f0447

    return p0

    :cond_1
    const-string v0, "pref_camera_panoramamode_key"

    .line 1419
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0f044b

    return p0

    :cond_2
    const-string v0, "pref_video_speed_key"

    .line 1421
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0f044d

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "pref_camera_face_beauty_mode_key"

    .line 1423
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f0f0443

    return p0

    :cond_4
    const-string v0, "pref_delay_capture_mode"

    .line 1425
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x7f0f0442

    return p0

    :cond_5
    const-string v0, "pref_video_speed_fast_key"

    .line 1427
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "pref_video_speed_slow_key"

    .line 1429
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p0, 0x7f0f0444

    return p0

    :cond_7
    const-string v0, "pref_camera_ubifocus_key"

    .line 1431
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x7f0f0451

    return p0

    :cond_8
    const-string v0, "pref_camera_manual_mode_key"

    .line 1433
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x7f0f044a

    return p0

    :cond_9
    const-string v0, "pref_camera_burst_shooting_key"

    .line 1435
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const p0, 0x7f0f0073

    return p0

    :cond_a
    const-string v0, "pref_audio_focus_mode_key"

    .line 1437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x7f0f005a

    return p0

    :cond_b
    const-string v0, "pref_camera_scenemode_setting_key"

    .line 1439
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p0, 0x7f0f044c

    return p0

    :cond_c
    const-string v0, "pref_camera_gradienter_key"

    .line 1441
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const p0, 0x7f0f0445

    return p0

    :cond_d
    const-string v0, "pref_camera_tilt_shift_mode"

    .line 1443
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const p0, 0x7f0f0450

    return p0

    :cond_e
    const-string v0, "pref_camera_magic_mirror_key"

    .line 1445
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const p0, 0x7f0f0449

    return p0

    :cond_f
    const-string v0, "pref_audio_capture"

    .line 1447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const p0, 0x7f0f043f

    return p0

    :cond_10
    const-string v0, "pref_camera_stereo_mode_key"

    .line 1449
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const p0, 0x7f0f044f

    return p0

    :cond_11
    const-string v0, "pref_camera_square_mode_key"

    .line 1451
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const p0, 0x7f0f044e

    return p0

    :cond_12
    const-string v0, "pref_camera_groupshot_mode_key"

    .line 1453
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const p0, 0x7f0f0446

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0

    :cond_14
    :goto_0
    const p0, 0x7f0f0440

    return p0
.end method

.method public static getFaceBeautifyValue(I)Ljava/lang/String;
    .locals 3

    .line 1781
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object p0

    .line 1785
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1786
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->supportFaceBeauty(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1787
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1788
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1789
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    return-object p0

    .line 1792
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyDefaultValue()Ljava/lang/String;

    move-result-object p0

    .line 1793
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1794
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset invalid face beauty value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0

    .line 1810
    :cond_3
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object p0
.end method

.method public static getFaceBeautyCloseValue()Ljava/lang/String;
    .locals 1

    .line 1767
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object v0
.end method

.method public static getFaceBeautyDefaultValue()Ljava/lang/String;
    .locals 1

    .line 1751
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object v0

    .line 1754
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isFrontFaceBeautyDefaultOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1755
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object v0

    .line 1756
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1757
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    return-object v0

    .line 1758
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1759
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    return-object v0

    .line 1761
    :cond_3
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    return-object v0
.end method

.method public static getFaceBeautyKey()Ljava/lang/String;
    .locals 1

    .line 1712
    invoke-static {}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_face_beauty_key"

    return-object v0

    :cond_0
    const-string v0, "pref_camera_face_beauty_key"

    return-object v0
.end method

.method public static getFaceBeautyLevel()I
    .locals 4

    .line 1695
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 1696
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1697
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1699
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1700
    sget-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    .line 1703
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isFaceBeautyValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset invalid face beauty value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1708
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFaceBeautyRatio(Ljava/lang/String;I)I
    .locals 1

    .line 1743
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatioKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getFaceBeautyRatioKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1719
    invoke-static {}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFaceBeautySwitch()Ljava/lang/String;
    .locals 4

    .line 1679
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1680
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1682
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "CameraSettings"

    const-string v3, "reset beauty switch"

    .line 1683
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 1685
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getFlashMode(I)Ljava/lang/String;
    .locals 1

    .line 2338
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1657
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_camera_manual_mode_key"

    .line 1551
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0f027b

    .line 1554
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 2

    .line 1617
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1618
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontMirror()Ljava/lang/String;
    .locals 3

    const v0, 0x7f0f03b5

    .line 1289
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1290
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_front_mirror_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHfrSetting()Ljava/lang/String;
    .locals 3

    .line 530
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f03ee

    .line 531
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_hfr_key"

    .line 530
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIds(I)[I
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 682
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 683
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 684
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 686
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getJpegQuality(Z)Ljava/lang/String;
    .locals 3

    .line 2043
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f02c2

    .line 2044
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_jpegquality_key"

    .line 2043
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    if-eqz p0, :cond_0

    .line 2046
    sget-boolean v2, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 2048
    sget-boolean v2, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v2, :cond_1

    const-string v1, "low"

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 2050
    sget-boolean p0, Lcom/android/camera/Device;->IS_E4:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "high"

    .line 2054
    :goto_0
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result p0

    .line 2055
    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v2

    if-ge p0, v2, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static getKValue()I
    .locals 3

    .line 1525
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v2, 0x157c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const p1, 0x7f0f0273

    .line 1623
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const p1, 0x7f0f0277

    .line 1625
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_2

    const p1, 0x7f0f0279

    .line 1627
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f0f0275

    .line 1629
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMappingFocusMode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const-string p0, "continuous-picture"

    goto :goto_0

    :cond_0
    const-string p0, "manual"

    :goto_0
    return-object p0
.end method

.method public static getMaxExposureTimes()I
    .locals 3

    .line 1889
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_max_exposure_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMaxHFRQuality()I
    .locals 2

    .line 586
    invoke-static {}, Lcom/android/camera/Device;->getMaxHFRQuality()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 1

    .line 1893
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1894
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1896
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static getMinExposureTimes()I
    .locals 3

    .line 1885
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_min_exposure_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0356

    .line 2093
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f0355

    .line 2094
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Street-snap-picture"

    return-object p0
.end method

.method public static getPanoramaMoveDirection(Landroid/content/Context;)I
    .locals 2

    .line 2331
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2333
    invoke-static {p0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    const-string v1, "pref_panorana_move_direction_key"

    .line 2331
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 10

    .line 1922
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CameraSettings"

    if-eqz p0, :cond_6

    .line 1923
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const v2, 0x61a80

    .line 1930
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1931
    aget v6, v4, v6

    .line 1932
    aget v4, v4, v5

    const/16 v5, 0x7530

    if-lt v4, v5, :cond_1

    if-gt v6, v5, :cond_1

    if-ge v6, v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    move v4, v3

    move v3, v6

    move v7, v3

    .line 1944
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 1945
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1946
    aget v9, v8, v6

    .line 1947
    aget v8, v8, v5

    if-ne v9, v2, :cond_3

    if-ge v7, v8, :cond_3

    move v4, v3

    move v7, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ltz v4, :cond_5

    .line 1955
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_5
    const-string p0, "Can\'t find an appropriate frame rate range!"

    .line 1957
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    :goto_2
    const-string p0, "No supported frame rates returned!"

    .line 1924
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPictureSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 375
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "4x3"

    return-object p0

    .line 378
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_camera_picturesize_key"

    .line 379
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 382
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 383
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public static getPreferVideoQuality()I
    .locals 8

    const v0, 0x7f0f03f0

    .line 599
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v0

    .line 598
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const-string v2, "pref_video_quality_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 604
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    .line 606
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 608
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/4 v6, 0x0

    if-lez v4, :cond_1

    const/4 v7, 0x0

    .line 610
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v3

    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isSupportedHsrForQuality(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 613
    invoke-interface {v5, v2, v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    :cond_0
    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    const-string v1, "pref_camera_hsr_value_key"

    .line 617
    invoke-interface {v5, v1, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 618
    invoke-interface {v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 619
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f03006a

    .line 620
    invoke-static {v7, v1}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset invalid video quality "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraSettings"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 624
    invoke-interface {v1, v2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 625
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_1

    :cond_2
    move-object v0, v7

    .line 627
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 629
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 630
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 634
    invoke-interface {v1, v2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 635
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 636
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    return v0
.end method

.method public static getPreviewAspectRatio(II)F
    .locals 6

    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 393
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v0, v2

    .line 394
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p0, p0, v4

    if-lez p0, :cond_1

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    .line 396
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const p0, 0x3fe38e39

    goto :goto_0

    :cond_1
    const p0, 0x3faaaaab

    :goto_0
    return p0
.end method

.method public static getPriorityStoragePreference()Z
    .locals 3

    .line 1908
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050012

    .line 1909
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_priority_storage"

    .line 1908
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getRenderAspectRatio(II)I
    .locals 0

    .line 411
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p0

    return p0
.end method

.method public static getSaturation()Ljava/lang/String;
    .locals 4

    const v0, 0x7f0f0324

    .line 2185
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_qc_camera_saturation_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f030033

    .line 2188
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset invalid saturation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetSaturation()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getShaderEffect()I
    .locals 2

    .line 1606
    :try_start_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1608
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v1

    .line 1609
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1611
    :catch_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return v0
.end method

.method public static getSharpness()Ljava/lang/String;
    .locals 4

    const v0, 0x7f0f033d

    .line 2209
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2210
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_qc_camera_sharpness_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f030038

    .line 2212
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset invalid sharpness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetSharpness()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;
    .locals 2

    .line 1634
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1635
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 v1, p1, 0x2

    .line 1636
    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    const p1, 0x7f0f020d

    .line 1637
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1638
    :cond_0
    div-int/lit8 p1, p1, 0x3

    if-le v0, p1, :cond_1

    const p1, 0x7f0f020f

    .line 1639
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    const p1, 0x7f0f020e

    .line 1641
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f0f020c

    .line 1643
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmartShutterPosition()Ljava/lang/String;
    .locals 3

    .line 1535
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_key_camera_smart_shutter_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStereoDofLevel()Ljava/lang/String;
    .locals 3

    .line 2239
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f035b

    .line 2241
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_stereo_key"

    .line 2239
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrictAspectRatio(II)I
    .locals 1

    .line 465
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 467
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 469
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 673
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStrings(I)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 696
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 698
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 700
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 702
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getSupportedHfrSettings()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 555
    fill-array-data v0, :array_0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxHFRQuality()I

    move-result v2

    .line 563
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget v6, v0, v5

    .line 564
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 565
    sget-object v8, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    sget-object v8, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const-string v8, "120"

    .line 567
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 572
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "off"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    if-gt v6, v2, :cond_2

    .line 576
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const-string v8, "%d:%s"

    invoke-static {v9, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 577
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add hfr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to supported"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CameraSettings"

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private static getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1082
    :try_start_0
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "getSupportedVideoHighFrameRateModes"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 1083
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 1084
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1086
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    .line 1042
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    const/16 v3, 0x3c

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 1045
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isSupportedHsrForQuality(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f03fa

    .line 1046
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 1049
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1050
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    sget-boolean v4, Lcom/android/camera/Device;->IS_E7T:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isSupportedHsrForQuality(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f03f8

    .line 1052
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x5

    .line 1055
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1056
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v2, :cond_4

    const/4 v1, 0x4

    .line 1058
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1059
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v1, 0xb

    .line 1061
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1062
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0xa

    .line 1064
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1065
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v1, 0x9

    .line 1067
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1068
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public static getSystemEdgeMode(Landroid/content/Context;)I
    .locals 4

    .line 2011
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "edge_handgrip"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2012
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_clean"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v0, v2

    .line 2013
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_back"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v0, v2

    .line 2014
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "edge_handgrip_screenshot"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1
.end method

.method public static getUIStyleByPreview(II)I
    .locals 13

    .line 1390
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1393
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    int-to-double v3, p0

    int-to-double p0, p1

    div-double/2addr v3, p0

    .line 1398
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result p0

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    if-eqz p0, :cond_2

    sub-double p0, v3, v7

    .line 1399
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v5

    if-gez p0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v3, p0

    .line 1401
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v9, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double p0, p0, v11

    if-gtz p0, :cond_3

    sub-double p0, v3, v7

    .line 1402
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v5

    if-gez p0, :cond_5

    .line 1403
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method

.method public static getVideoQuality()I
    .locals 2

    .line 535
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    .line 538
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    .line 542
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v0

    const-string v1, "pref_video_speed_slow_key"

    .line 543
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxHFRQuality()I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static hasBeautyMenuInBackPortraitMode()Z
    .locals 1

    .line 2127
    invoke-static {}, Lcom/android/camera/Device;->supportBeautyMenuInBackPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraPortraitWithFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initSupportedVideoHsrSize(Landroid/hardware/Camera$Parameters;I)V
    .locals 9

    const-string v0, "pref_camera_max_height_hsr_key"

    const-string v1, "pref_camera_max_width_hsr_key"

    .line 1098
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastVideoModule()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSlowVideoModule()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1101
    sput-object v2, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    .line 1102
    sput-object v2, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSupportedVideoHsrSize() hsrValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettings"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    .line 1108
    sget-object v2, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    if-nez v2, :cond_1

    const-string p0, "current hsr supportedList is null"

    .line 1109
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1112
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no support hsr value is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 1118
    :try_start_0
    const-class v5, Landroid/hardware/Camera$Parameters;

    const-string v6, "getSupportedHfrSizes"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 1119
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sput-object p0, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    .line 1120
    sget-object p0, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    if-nez p0, :cond_3

    .line 1121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsr value is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " have no pictureSize"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1133
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1134
    invoke-interface {p0, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1135
    invoke-interface {p0, v0, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1136
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    .line 1124
    :cond_3
    :try_start_1
    sget-object p0, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    if-eqz p0, :cond_4

    .line 1126
    iget p1, p0, Landroid/hardware/Camera$Size;->width:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1127
    :try_start_2
    iget v4, p0, Landroid/hardware/Camera$Size;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p0, v4

    move v4, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move v8, v4

    move v4, p1

    move p1, v8

    goto :goto_3

    :catch_0
    move-exception p0

    move v8, v4

    move v4, p1

    move p1, v8

    goto :goto_1

    :cond_4
    move p0, v4

    .line 1129
    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxWidth = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1133
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1134
    invoke-interface {p1, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1135
    invoke-interface {p1, v0, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1136
    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v8, p1

    move p1, p0

    move-object p0, v8

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v8, p1

    move p1, p0

    move-object p0, v8

    goto :goto_1

    :catchall_2
    move-exception p0

    move p1, v4

    goto :goto_3

    :catch_2
    move-exception p0

    move p1, v4

    .line 1131
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1133
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1134
    invoke-interface {p0, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1135
    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1136
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :goto_2
    return-void

    :catchall_3
    move-exception p0

    .line 1133
    :goto_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1134
    invoke-interface {v2, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1135
    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1136
    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 1137
    throw p0
.end method

.method public static intelligentValueToBeautyLevel(Ljava/lang/String;)I
    .locals 2

    .line 1824
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/camera/Util;->stringSparseArraysIndexOf(Landroid/util/SparseArray;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid faceBeautyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1829
    :cond_0
    sget-object p0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public static is4KHigherVideoQuality(I)Z
    .locals 2

    .line 1031
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1034
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    if-gt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isAEAFLockSupport()Z
    .locals 3

    .line 1358
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1361
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 1362
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "pref_camera_ae_af_lock_support_key"

    .line 1361
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdvancedBeautyOn(I)Z
    .locals 1

    .line 1652
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object p0

    .line 1653
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAsdMotionEnable()Z
    .locals 3

    .line 1980
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050003

    .line 1982
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_camera_asd_night_key"

    .line 1981
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsdNightEnable()Z
    .locals 3

    .line 1974
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1975
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050003

    .line 1976
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_camera_asd_night_key"

    .line 1975
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsdPopupEnable()Z
    .locals 1

    .line 1970
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v0

    return v0
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, p0

    .line 445
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio18_9(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, p0

    .line 458
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio1_1(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAspectRatio4_3(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v0, p0

    .line 432
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAudioCaptureOpen()Z
    .locals 2

    .line 1572
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_audio_capture"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackCamera()Z
    .locals 1

    .line 356
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBeauty3DMakeUpClicked()Z
    .locals 3

    .line 2267
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_beauty_3d_makeup_clicked_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBurstShootingEnable()Z
    .locals 3

    .line 1351
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f0f02ca

    .line 1354
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_long_press_shutter_feature_key"

    .line 1352
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraFaceDetectionAutoHidden()Z
    .locals 3

    .line 2131
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2132
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    .line 2133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "pref_camera_facedetection_auto_hidden_key"

    .line 2131
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCameraParallelProcessEnable()Z
    .locals 3

    .line 2137
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2138
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    .line 2139
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "pref_camera_parallel_process_enable_key"

    .line 2137
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraPortraitWithFaceBeauty()Z
    .locals 3

    .line 2121
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2122
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000d

    .line 2123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "pref_camera_portrait_with_facebeauty_key"

    .line 2121
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCameraSoundOpen()Z
    .locals 3

    .line 1238
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1239
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v2, "pref_camerasound_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isCameraSpecific(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_picturesize_key"

    .line 2275
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_jpegquality_key"

    .line 2276
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_quality_key"

    .line 2277
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_hfr_key"

    .line 2278
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_sticker_path_key"

    .line 2279
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_flashmode_key"

    .line 2280
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_video_flashmode_key"

    .line 2281
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_hdr_key"

    .line 2282
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_hdr_key"

    .line 2283
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_whitebalance_key"

    .line 2284
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 2285
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_focus_position_key"

    .line 2286
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_qc_camera_exposuretime_key"

    .line 2287
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_qc_camera_iso_key"

    .line 2288
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_zoom_mode_key"

    .line 2289
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_manually_lens"

    .line 2290
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_face_beauty_key"

    .line 2291
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_face_beauty_key"

    .line 2292
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_face_beauty_switch_key"

    .line 2293
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_beautify_slim_face_ratio_key"

    .line 2294
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    .line 2295
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_beautify_skin_color_ratio_key"

    .line 2296
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 2297
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_bokeh_key"

    .line 2298
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_ai_scene_mode_key"

    .line 2299
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDualCameraHintShown()Z
    .locals 6

    .line 2063
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2066
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 2069
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v3, "pref_dual_camera_use_hint_shown_times_key"

    .line 2070
    invoke-virtual {v0, v3, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2071
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v5, v4, 0x1

    .line 2072
    invoke-interface {v0, v3, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 2073
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const/4 v0, 0x5

    if-ge v4, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isDualCameraWaterMarkOpen()Z
    .locals 3

    .line 1267
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1269
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 1271
    invoke-static {}, Lcom/android/camera/Device;->pictureWatermarkDefaultValue()Z

    move-result v1

    const-string v2, "pref_dualcamera_watermark"

    .line 1270
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isEdgePhotoEnable()Z
    .locals 1

    .line 2007
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEvAdjustable()Z
    .locals 1

    .line 2245
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2248
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFaceBeautyOn(Ljava/lang/String;)Z
    .locals 1

    .line 1648
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isFaceBeautyValid(Ljava/lang/String;)Z
    .locals 1

    .line 1833
    sget-object v0, Lcom/android/camera/CameraSettings;->sFaceBeautyLevelToValue:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/camera/Util;->stringSparseArraysIndexOf(Landroid/util/SparseArray;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFingerprintCaptureEnable()Z
    .locals 3

    .line 2181
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_fingerprint_capture_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .line 1565
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    .line 1566
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 2

    .line 351
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGradienterOn()Z
    .locals 2

    .line 1492
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_gradienter_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGroupShotOn()Z
    .locals 2

    .line 1488
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHsrVideoRecord()Z
    .locals 6

    .line 1018
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_camera_hsr_value_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHsrVideoRecord hsrValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1022
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v1

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknow hsr value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v3
.end method

.method public static isLabOptionsVisible()Z
    .locals 3

    .line 2111
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_lab_option_key_visible"

    const/4 v2, 0x0

    .line 2112
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMagicMirrorOn()Z
    .locals 2

    .line 1304
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isModuleSupportVideoFaceBeauty()Z
    .locals 1

    .line 1734
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty(I)Z

    move-result v0

    return v0
.end method

.method public static isModuleSupportVideoFaceBeauty(I)Z
    .locals 1

    .line 1726
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMovieSolidOn()Z
    .locals 3

    .line 1294
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f0f02db

    .line 1296
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_camera_movie_solid_key"

    .line 1295
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNearAspectRatio(IIII)Z
    .locals 0

    .line 480
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p0

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNearRatio16_9(II)Z
    .locals 9

    if-ge p0, p1, :cond_0

    move v8, p1

    move p1, p0

    move p0, v8

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 495
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v0, v2

    .line 496
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p0, p0, v4

    const/4 p1, 0x0

    if-gtz p0, :cond_2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    .line 497
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v4, v6

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 498
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isNearRatio18_9(II)Z
    .locals 9

    if-ge p0, p1, :cond_0

    move v8, p1

    move p1, p0

    move p0, v8

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 516
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v0, v2

    .line 517
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p0, p0, v4

    const/4 p1, 0x0

    if-gtz p0, :cond_2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v4, v6

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 519
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    .line 520
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return p1
.end method

.method public static isNeedRemind(Ljava/lang/String;)Z
    .locals 2

    .line 2078
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_remind"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNoCameraModeSelected(Landroid/content/Context;)Z
    .locals 1

    .line 1993
    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object p0

    .line 1994
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1995
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isPopupTipBeautyIntroEnable()Z
    .locals 3

    .line 2252
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2253
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v2, "pref_popup_tip_beauty_intro_clicked_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v2, "pref_popup_tip_beauty_intro_show_times_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPortraitModeOn()Z
    .locals 2

    .line 1480
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_portrait_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPressDownCapture()Z
    .locals 3

    const v0, 0x7f0f02ca

    .line 1962
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1964
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1965
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus"

    .line 1964
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProximityLockOpen()Z
    .locals 3

    .line 1281
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_proximity_lock_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQRCodeReceiverAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.xiaomi.scanner"

    .line 1319
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRecordLocation()Z
    .locals 3

    .line 1233
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1234
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isScanQRCode(Landroid/content/Context;)Z
    .locals 2

    .line 1312
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1313
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const v0, 0x7f0f03cf

    .line 1315
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "pref_scan_qrcode_key"

    .line 1313
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStereoModeOn()Z
    .locals 2

    .line 1484
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_stereo_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuperResolutionEnable()Z
    .locals 3

    .line 1986
    invoke-static {}, Lcom/android/camera/Device;->isSupportSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050010

    .line 1988
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_camera_super_resolution_for_lab_key"

    .line 1987
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportAiSceneModeHuman()Z
    .locals 1

    .line 2159
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportParallelProcess()Z
    .locals 1

    .line 2169
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v0

    return v0
.end method

.method public static isSupportedDualCameraWaterMark()Z
    .locals 1

    .line 2173
    invoke-static {}, Lcom/android/camera/Device;->supportPictureWaterMark()Z

    move-result v0

    return v0
.end method

.method public static isSupportedDualLensMode()Z
    .locals 2

    .line 2162
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2165
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->hasMuxCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportedHsrForQuality(II)Z
    .locals 4

    .line 1147
    sget-object v0, Lcom/android/camera/CameraSettings;->sSupportedVideoHighFrameRateModeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    const-string v3, "CameraSettings"

    if-ne v0, v2, :cond_1

    .line 1153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current camera have no HFR value is  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1156
    :cond_1
    sget-object v2, Lcom/android/camera/CameraSettings;->supportedHfrSizeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-nez v0, :cond_2

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qualityValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hsrValue = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " no support"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1162
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p1

    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 1163
    iget p1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt p1, v2, :cond_3

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isSupportedMetadata()Z
    .locals 1

    .line 2177
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

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

.method public static isSupportedOpticalZoom()Z
    .locals 1

    .line 2143
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->hasMuxCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedPortrait()Z
    .locals 1

    .line 2151
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->hasMuxCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedPortraitZoom()Z
    .locals 1

    .line 1308
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedStereo()Z
    .locals 1

    .line 2147
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    return v0
.end method

.method public static isSwitchCameraZoomMode()Z
    .locals 1

    .line 2102
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

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

.method public static isSwitchOn(Ljava/lang/String;)Z
    .locals 3

    .line 1470
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1472
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "off"

    const-string v2, "on"

    if-eqz v0, :cond_1

    .line 1473
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1475
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTiltShiftOn()Z
    .locals 2

    .line 1496
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTimeWaterMarkOpen()Z
    .locals 3

    .line 1243
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_watermark_key"

    const/4 v2, 0x0

    .line 1244
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTransient(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_delay_capture_mode"

    .line 2303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_shader_coloreffect_key"

    .line 2304
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_scenemode_key"

    .line 2305
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_scenemode_setting_key"

    .line 2306
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_gradienter_key"

    .line 2307
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_audio_capture"

    .line 2308
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_ubifocus_key"

    .line 2309
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_magic_mirror_key"

    .line 2310
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_groupshot_mode_key"

    .line 2311
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_tilt_shift_key"

    .line 2312
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_tilt_shift_mode"

    .line 2313
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_hand_night_key"

    .line 2314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_speed_fast_key"

    .line 2315
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_speed_slow_key"

    .line 2316
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_portrait_mode_key"

    .line 2317
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_manual_mode_key"

    .line 2318
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_square_mode_key"

    .line 2319
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_show_gender_age_key"

    .line 2320
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_peak_key"

    .line 2321
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_stereo_mode_key"

    .line 2322
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVideoCaptureVisible()Z
    .locals 2

    .line 1200
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1201
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHFRVideoCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1204
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v0, :cond_4

    .line 1205
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static readEdgePhotoSetting(Landroid/content/Context;)V
    .locals 2

    .line 2018
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2020
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "edge_handgrip_photo"

    .line 2019
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    :cond_1
    return-void
.end method

.method public static readExposure()I
    .locals 3

    .line 959
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 963
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static readPreferredCameraId()I
    .locals 1

    .line 951
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public static readZoom()I
    .locals 3

    .line 981
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_camera_zoom_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 985
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static resetContrast()V
    .locals 2

    .line 2225
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_qc_camera_contrast_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetExposure()V
    .locals 2

    .line 975
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_camera_exposure_key"

    .line 976
    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 977
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetSaturation()V
    .locals 2

    .line 2221
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_qc_camera_saturation_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetSharpness()V
    .locals 2

    .line 2229
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetZoom()V
    .locals 2

    .line 997
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_camera_zoom_key"

    .line 998
    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 999
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static retainCameraMode()Z
    .locals 3

    .line 1277
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_retain_camera_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAiSceneOpen(Z)V
    .locals 2

    .line 1255
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_camera_ai_scene_mode_key"

    .line 1256
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 645
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const v2, 0x7f0f01ff

    .line 648
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/16 p2, -0xfa

    .line 649
    iput p2, v1, Landroid/graphics/Rect;->left:I

    .line 650
    iput p2, v1, Landroid/graphics/Rect;->top:I

    const/16 p2, 0xfa

    .line 651
    iput p2, v1, Landroid/graphics/Rect;->right:I

    .line 652
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    const v2, 0x7f0f01fd

    .line 654
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 655
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 656
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 657
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 658
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    move v3, v4

    goto :goto_0

    :cond_2
    const/16 p2, -0x3e8

    .line 662
    iput p2, v1, Landroid/graphics/Rect;->left:I

    .line 663
    iput p2, v1, Landroid/graphics/Rect;->top:I

    const/16 p2, 0x3e8

    .line 664
    iput p2, v1, Landroid/graphics/Rect;->right:I

    .line 665
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 668
    :goto_0
    new-instance p2, Landroid/hardware/Camera$Area;

    invoke-direct {p2, v1, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    return-void
.end method

.method public static setBeauty3DMakeupClicked()V
    .locals 3

    .line 2271
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_beauty_3d_makeup_clicked_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setDualCameraWaterMarkOpen(Z)V
    .locals 2

    .line 1248
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_dualcamera_watermark"

    .line 1250
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    return-void
.end method

.method public static setEdgeMode(Landroid/content/Context;Z)V
    .locals 6

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 2027
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readEdgePhotoSetting(Landroid/content/Context;)V

    .line 2029
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "input"

    .line 2030
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2032
    const-class v3, Landroid/hardware/input/InputManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "switchTouchEdgeMode"

    const-string v5, "(I)V"

    .line 2033
    invoke-static {v2, v3, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2035
    aget-object v2, v2, v4

    new-array v5, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2036
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSystemEdgeMode(Landroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    .line 2035
    invoke-virtual {v3, v2, v0, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static setFaceBeautyLevel(I)V
    .locals 2

    .line 1738
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->beautyLevelToIntelligentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 1739
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFaceBeautyRatio(Ljava/lang/String;I)V
    .locals 1

    .line 1747
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatioKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFaceBeautySwitch(Ljava/lang/String;)V
    .locals 2

    .line 1691
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_camera_face_beauty_switch_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFlashMode(ILjava/lang/String;)V
    .locals 1

    .line 2342
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2

    .line 1560
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_qc_focus_mode_switching_key"

    .line 1561
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFocusPosition(I)V
    .locals 2

    .line 1592
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1593
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_focus_position_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1594
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setGoogleLensAvailability(Z)V
    .locals 0

    .line 1347
    sput-boolean p0, Lcom/android/camera/CameraSettings;->sGoolgeLensAvilability:Z

    return-void
.end method

.method public static setKValue(I)V
    .locals 2

    .line 1519
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    .line 1520
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1521
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setPanoramaMoveDirection(I)V
    .locals 2

    .line 2326
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_panorana_move_direction_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setPopupTipBeautyIntroClicked()V
    .locals 3

    .line 2263
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_popup_tip_beauty_intro_clicked_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2

    .line 1902
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_priority_storage"

    .line 1903
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1904
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setShaderEffect(I)V
    .locals 2

    .line 1598
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1600
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v1

    .line 1601
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setSmartShutterPosition(Ljava/lang/String;)V
    .locals 2

    .line 1529
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_key_camera_smart_shutter_position"

    .line 1530
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1531
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 6

    .line 1176
    :try_start_0
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "setVideoHighFrameRate"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 1177
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static showGenderAge()Z
    .locals 2

    .line 1300
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_show_gender_age_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static supportFaceBeauty(I)Z
    .locals 4

    .line 1771
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->hasBeautyMenuInBackPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/16 v3, 0xa3

    if-eq p0, v3, :cond_5

    const/16 v3, 0xa5

    if-eq p0, v3, :cond_5

    const/16 v3, 0xab

    if-ne p0, v3, :cond_3

    if-nez v0, :cond_5

    .line 1777
    :cond_3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isModuleSupportVideoFaceBeauty(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 7

    .line 1186
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1187
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "open_camera_fail_key"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1188
    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1189
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-wide v3
.end method

.method public static upgradeGlobalPreferences()V
    .locals 4

    .line 885
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "pref_version_key"

    const/4 v2, 0x0

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 889
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeToVersion3()V

    .line 890
    invoke-interface {v0, v1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 891
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    return-void
.end method

.method private static upgradeToVersion3()V
    .locals 13

    .line 896
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 897
    fill-array-data v1, :array_0

    .line 900
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "camera_settings_simple_mode_local_"

    if-ge v4, v2, :cond_3

    aget v6, v1, v4

    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    .line 902
    invoke-static {v6, v5}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 903
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 905
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 906
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 907
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 908
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 909
    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 912
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "camera_settings_global"

    .line 916
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 919
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 920
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 921
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 922
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 923
    :cond_5
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 926
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 929
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/shared_prefs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v2

    array-length v4, v2

    move v6, v3

    :goto_3
    if-ge v6, v4, :cond_a

    aget-object v7, v2, v6

    .line 931
    sget-object v8, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    if-eq v8, v7, :cond_9

    .line 932
    array-length v8, v1

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_9

    aget v10, v1, v9

    .line 933
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-static {v10, v7}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 936
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".xml"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 938
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 944
    :cond_a
    new-instance v1, Ljava/io/File;

    const-string v2, "camera_settings_simple_mode_global.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 946
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_b
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static writeExposure(I)V
    .locals 2

    .line 969
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 970
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 971
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static writeZoom(I)V
    .locals 2

    .line 991
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 992
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 993
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
