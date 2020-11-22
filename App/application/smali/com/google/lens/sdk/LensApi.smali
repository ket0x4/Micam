.class public Lcom/google/lens/sdk/LensApi;
.super Ljava/lang/Object;
.source "LensApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;
    }
.end annotation


# static fields
.field static final LENS_BITMAP_URI_KEY:Ljava/lang/String; = "LensBitmapUriKey"

.field static final LENS_DEEPLINKING_STRING:Ljava/lang/String; = "googleapp://lens"

.field static final LENS_DEEPLINKING_URI:Landroid/net/Uri;


# instance fields
.field private final context:Landroid/content/Context;

.field private final paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

.field private final serviceBridge:Lcom/google/android/apps/lens/library/base/LensServiceBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "googleapp://lens"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/lens/sdk/LensApi;->LENS_DEEPLINKING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi;->context:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    .line 119
    new-instance v0, Lcom/google/android/apps/lens/library/base/LensServiceBridge;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->serviceBridge:Lcom/google/android/apps/lens/library/base/LensServiceBridge;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/google/lens/sdk/LensApi;->mapInternalLensAvailabilityToExternal(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/lens/sdk/LensApi;->startLensActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private static mapInternalLensAvailabilityToExternal(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalLensAvailabilityStatus"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0x20

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Internal error code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LensApi"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return p0
.end method

.method private startLensActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->serviceBridge:Lcom/google/android/apps/lens/library/base/LensServiceBridge;

    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->prewarmLensActivity()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "LensApi"

    const-string v0, "Lens is pre-warmed."

    .line 206
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "googleapp://lens"

    .line 210
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 251
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p0, 0x5

    .line 253
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    new-instance v0, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;

    invoke-direct {v0, p1}, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->getParams(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "keyguard"

    .line 144
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 145
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 147
    new-instance v1, Lcom/google/lens/sdk/LensApi$1;

    invoke-direct {v1, p0, p1}, Lcom/google/lens/sdk/LensApi$1;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    .line 165
    invoke-virtual {v0, p1, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    :cond_0
    const/16 p0, 0x40

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Cannot start Lens when device is locked with Android "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LensApi"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/lens/sdk/LensApi;->startLensActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "feature"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/16 p0, 0x22

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Invalid lens activity: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LensApi"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->getArStickersAvailability()I

    move-result p0

    if-nez p0, :cond_2

    .line 190
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.google.ar.lens"

    const-string v0, "com.google.vr.apps.ornament.app.MainActivity"

    .line 191
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->serviceBridge:Lcom/google/android/apps/lens/library/base/LensServiceBridge;

    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->unbindService()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->serviceBridge:Lcom/google/android/apps/lens/library/base/LensServiceBridge;

    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/LensServiceBridge;->bindService()Z

    return-void
.end method
