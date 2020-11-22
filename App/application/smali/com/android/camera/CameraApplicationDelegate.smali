.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mMainIntentActivityLaunched:Z

.field private mRestoreSetting:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 20
    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 58
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.intent.action.MAIN"

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 79
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    const-string v3, "android.intent.action.MAIN"

    .line 81
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 83
    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 34
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    return p0
.end method

.method public onCreate()V
    .locals 1

    .line 25
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 26
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraStat;->initialize(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.intent.action.MAIN"

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetRestoreFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return-void
.end method
