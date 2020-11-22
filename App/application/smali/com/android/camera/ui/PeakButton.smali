.class public Lcom/android/camera/ui/PeakButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "PeakButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    .line 76
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyClickToDispatcher()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_camera_peak_key"

    .line 44
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 25
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120007

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 28
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
