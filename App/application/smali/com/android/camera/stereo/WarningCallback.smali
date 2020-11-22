.class public Lcom/android/camera/stereo/WarningCallback;
.super Ljava/lang/Object;
.source "WarningCallback.java"

# interfaces
.implements Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningCallback"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsDualCameraReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return-void
.end method


# virtual methods
.method public isDualCameraReady()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return p0
.end method

.method public onWarning(I)V
    .locals 3

    .line 29
    sget-object v0, Lcom/android/camera/stereo/WarningCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWarning type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 50
    sget-object p0, Lcom/android/camera/stereo/WarningCallback;->TAG:Ljava/lang/String;

    const-string p1, "Warning message don\'t need to show"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f00e1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f00e0

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 34
    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f00df

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 47
    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    :goto_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return-void
.end method
