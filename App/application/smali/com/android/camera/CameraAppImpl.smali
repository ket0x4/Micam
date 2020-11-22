.class public Lcom/android/camera/CameraAppImpl;
.super Lmiui/external/Application;
.source "CameraAppImpl.java"


# static fields
.field private static sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;


# instance fields
.field private sLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 0

    .line 66
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 0

    .line 74
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->closeAllActivitiesBut(Landroid/app/Activity;)V

    return-void
.end method

.method public isApplicationFirstLaunched()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    .line 84
    iget-boolean p0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 0

    .line 78
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->isMainIntentActivityLaunched()Z

    move-result p0

    return p0
.end method

.method public onCreateApplicationDelegate()Lcom/android/camera/CameraApplicationDelegate;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/camera/CameraApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraApplicationDelegate;-><init>(Lcom/android/camera/CameraAppImpl;)V

    sput-object v0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    .line 35
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_X11:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/android/camera/CrashHandler;->getInstance()Lcom/android/camera/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CrashHandler;->init(Landroid/content/Context;)V

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 42
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    return-object p0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->onCreateApplicationDelegate()Lcom/android/camera/CameraApplicationDelegate;

    move-result-object p0

    return-object p0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 0

    .line 70
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraApplicationDelegate;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public resetRestoreFlag()V
    .locals 0

    .line 54
    sget-object p0, Lcom/android/camera/CameraAppImpl;->sApplicationDelegate:Lcom/android/camera/CameraApplicationDelegate;

    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->resetRestoreFlag()V

    return-void
.end method
