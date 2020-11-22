.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# instance fields
.field private mApplicationDelegate:Lmiui/external/ApplicationDelegate;

.field private mInitialized:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    invoke-direct {p0}, Lmiui/external/Application;->loadSdk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->initializeSdk()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lmiui/external/Application;->mInitialized:Z

    return-void
.end method

.method private initializeSdk()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private loadSdk()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private startSdk()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 117
    iget-boolean p1, p0, Lmiui/external/Application;->mInitialized:Z

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->startSdk()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    .line 124
    iget-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1, p0}, Lmiui/external/ApplicationDelegate;->attach(Lmiui/external/Application;)V

    :cond_2
    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lmiui/external/Application;->mStarted:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lmiui/external/Application;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->superOnCreate()V

    :goto_0
    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final onLowMemory()V
    .locals 1

    .line 161
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnLowMemory()V

    :goto_0
    return-void
.end method

.method public final onTerminate()V
    .locals 1

    .line 148
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnTerminate()V

    :goto_0
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnTrimMemory(I)V

    :goto_0
    return-void
.end method

.method final superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final superOnCreate()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final superOnLowMemory()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final superOnTerminate()V
    .locals 0

    .line 156
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final superOnTrimMemory(I)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
