.class Landroid/support/v4/media/MediaController2ImplLegacy;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Landroid/support/v4/media/MediaController2$SupportLibraryImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final sDefaultRootExtras:Landroid/os/Bundle;


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInstance:Landroid/support/v4/media/MediaController2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaController2ImplLegacy;->DEBUG:Z

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    .line 152
    sget-object v0, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    const-string v1, "android.support.v4.media.root_default_root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method onConnectedNotLocked(Landroid/os/Bundle;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
