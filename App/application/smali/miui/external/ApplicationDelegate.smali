.class public abstract Lmiui/external/ApplicationDelegate;
.super Landroid/content/ContextWrapper;
.source "ApplicationDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private mApplication:Lmiui/external/Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method attach(Lmiui/external/Application;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 67
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0}, Lmiui/external/Application;->superOnCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 106
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0}, Lmiui/external/Application;->superOnLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 77
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0}, Lmiui/external/Application;->superOnTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 126
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnTrimMemory(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lmiui/external/ApplicationDelegate;->mApplication:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
