.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field private static mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

.field private static mScreenManualBrightnessSpline:Landroid/util/Spline;


# instance fields
.field private mBrightness:I

.field private mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;

.field private mFirstFocusChanged:Z

.field private mPaused:Z

.field private mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraBrightness;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraBrightness;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/CameraBrightness;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->createSpline()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400()Landroid/util/Spline;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/Spline;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/CameraBrightness;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness;->getAndroidIntResource(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness;->getMiuiIntResource(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private adjustBrightness()V
    .locals 2

    .line 185
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 187
    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private static createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 5

    .line 302
    :try_start_0
    array-length v0, p0

    .line 303
    new-array v1, v0, [F

    .line 304
    new-array v2, v0, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 307
    aget v4, p0, v3

    int-to-float v4, v4

    aput v4, v1, v3

    .line 308
    aget v4, p1, v3

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {v1, v2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "CameraBrightness"

    const-string v0, "Could not create manual-brightness spline."

    .line 320
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private createSpline()V
    .locals 2

    .line 234
    sget-object v0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    const-string v1, "config_manual_spline_available"

    .line 236
    invoke-direct {p0, v1, v0}, Lcom/android/camera/CameraBrightness;->getAndroidBoolRes(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_manualBrightnessRemapIn"

    .line 237
    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "config_manualBrightnessRemapOut"

    .line 238
    invoke-direct {p0, v1}, Lcom/android/camera/CameraBrightness;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object p0

    .line 240
    invoke-static {p0, v0}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v1

    sput-object v1, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 241
    invoke-static {v0, p0}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object p0

    sput-object p0, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 242
    sget-object p0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "CameraBrightness"

    const-string v0, "Error to create manual brightness spline"

    .line 243
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private getAndroidArrayRes(Ljava/lang/String;)[I
    .locals 2

    const-string p0, "CameraBrightness"

    .line 263
    :try_start_0
    const-class v0, Lcom/android/internal/R$array;

    const-string v1, "I"

    invoke-static {v0, p1, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p1

    .line 264
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 271
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private getAndroidBoolRes(Ljava/lang/String;Z)Z
    .locals 2

    const-string p0, "CameraBrightness"

    .line 250
    :try_start_0
    const-class v0, Lcom/android/internal/R$bool;

    const-string v1, "I"

    invoke-static {v0, p1, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p1

    .line 251
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method

.method private getAndroidIntResource(Ljava/lang/String;)I
    .locals 2

    const-string p0, "CameraBrightness"

    .line 276
    :try_start_0
    const-class v0, Lcom/android/internal/R$integer;

    const-string v1, "I"

    invoke-static {v0, p1, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p1

    .line 277
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getMiuiIntResource(Ljava/lang/String;)I
    .locals 2

    const-string p0, "CameraBrightness"

    .line 289
    :try_start_0
    const-class v0, Landroid/miui/R$integer;

    const-string v1, "I"

    invoke-static {v0, p1, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p1

    .line 290
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p1, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentBrightness()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 226
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    const-string v0, "CameraBrightness"

    const-string v1, "onResume adjustBrightness"

    .line 219
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstFocusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 200
    iput-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 209
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    return-void
.end method
