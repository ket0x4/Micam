.class public Lcom/android/camera/preferences/CameraSettingPreferences;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
    }
.end annotation


# static fields
.field private static sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 2

    const-class v0, Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;-><init>()V

    sput-object v1, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 30
    :cond_0
    sget-object v1, Lcom/android/camera/preferences/CameraSettingPreferences;->sPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 109
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 228
    new-instance v0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;-><init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 35
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 89
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 91
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 93
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 78
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 80
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 58
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 60
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 71
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 47
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
