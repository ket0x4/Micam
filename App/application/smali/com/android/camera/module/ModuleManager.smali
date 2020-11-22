.class public Lcom/android/camera/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field private static sCurrentModuleIndex:I = -0x1

.field private static sInstance:Lcom/android/camera/module/ModuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/camera/module/ModuleManager;

    invoke-direct {v0}, Lcom/android/camera/module/ModuleManager;-><init>()V

    sput-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveModuleIndex()I
    .locals 1

    .line 61
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return v0
.end method

.method private static getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .line 134
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    return-object v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    return-object v0

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    return-object v0

    .line 140
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    return-object v0

    .line 142
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    return-object v0

    .line 146
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    return-object v0
.end method

.method public static getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 32
    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    new-instance p0, Lcom/android/camera/module/UDCFPortraitModule;

    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;-><init>()V

    return-object p0

    .line 53
    :pswitch_2
    new-instance p0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    return-object p0

    .line 39
    :cond_0
    :pswitch_3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object p0

    return-object p0

    .line 44
    :pswitch_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_5
    new-instance p0, Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .line 158
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    return-object v0

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    return-object v0

    .line 164
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    return-object v0

    .line 166
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    return-object v0

    .line 170
    :cond_4
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method public static isCameraModule()Z
    .locals 2

    .line 85
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFastVideoModule()Z
    .locals 2

    .line 77
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFunModule()Z
    .locals 2

    .line 69
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isManualModule()Z
    .locals 2

    .line 101
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .line 97
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPortraitModule()Z
    .locals 2

    .line 112
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSlowVideoModule()Z
    .locals 2

    .line 81
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSquareModule()Z
    .locals 2

    .line 93
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperNightScene()Z
    .locals 2

    .line 105
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xac

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCategory(I)Z
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoModule()Z
    .locals 2

    .line 73
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setActiveModuleIndex(I)V
    .locals 0

    .line 65
    sput p0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return-void
.end method
