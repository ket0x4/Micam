.class public Lcom/android/camera/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static PERMISSION_GRANTED:Z

.field private static mLaunchPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAndroidGoDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocationPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRuntimePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/permission/PermissionManager;->sAndroidGoDevices:Ljava/util/Set;

    .line 35
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    sget-object v1, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    sget-object v1, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sAndroidGoDevices:Ljava/util/Set;

    const-string v1, "tiare"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sAndroidGoDevices:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/camera/permission/PermissionManager;->PERMISSION_GRANTED:Z

    return-void
.end method

.method public static checkCameraLaunchPermissions()Z
    .locals 3

    .line 91
    sget-boolean v0, Lcom/android/camera/permission/PermissionManager;->PERMISSION_GRANTED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 94
    :cond_0
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "PermissionManager"

    const-string v2, "CheckCameraPermissions(), all on"

    .line 98
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkCameraLocationPermissions()Z
    .locals 3

    .line 108
    sget-boolean v0, Lcom/android/camera/permission/PermissionManager;->PERMISSION_GRANTED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 109
    :cond_0
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sLocationPermissionList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "PermissionManager"

    const-string v2, "checkCameraLocationPermissions(), all on"

    .line 113
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkPhoneStatePermission(Landroid/app/Activity;)Z
    .locals 2

    .line 145
    sget-boolean v0, Lcom/android/camera/permission/PermissionManager;->PERMISSION_GRANTED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 146
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public static getCameraRuntimePermissionRequestCode()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method private static getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PermissionManager"

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNeedCheckPermissionList() permission ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeedCheckPermissionList() listSize ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z
    .locals 8

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    .line 200
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 202
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 204
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 206
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_0

    .line 207
    aget-object v6, p0, v2

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    .line 211
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    .line 213
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z
    .locals 7

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 173
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 175
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 177
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 178
    aget-object v5, p0, v2

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    .line 182
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static requestCameraRuntimePermissions(Landroid/app/Activity;)Z
    .locals 4

    .line 128
    sget-boolean v0, Lcom/android/camera/permission/PermissionManager;->PERMISSION_GRANTED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    sget-object v0, Lcom/android/camera/permission/PermissionManager;->sRuntimePermissions:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "PermissionManager"

    if-lez v2, :cond_1

    const-string v1, "requestCameraRuntimePermissions(), user check"

    .line 132
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x64

    .line 133
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "requestCameraRuntimePermissions(), all on"

    .line 140
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
