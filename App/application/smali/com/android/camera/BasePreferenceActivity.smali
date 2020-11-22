.class public abstract Lcom/android/camera/BasePreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePreferenceActivity"


# instance fields
.field private mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

.field private mCameraASDNightPreference:Landroid/preference/Preference;

.field private mFromWhere:I

.field protected mPreferenceGroup:Landroid/preference/PreferenceScreen;

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field private mStartFromSecureKeyguard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/camera/BasePreferenceActivity;->mStartFromSecureKeyguard:Z

    .line 482
    new-instance v0, Lcom/android/camera/BasePreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/BasePreferenceActivity$4;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->restorePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->installQRCodeReceiver()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/Util$PackageInstallerListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

    return-object p0
.end method

.method private filterByDeviceID()V
    .locals 4

    .line 253
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_hfr_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_long_press_shutter_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 261
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 265
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTimeWaterMark()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_watermark_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 269
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_dualcamera_watermark"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 273
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v0

    if-nez v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camerasound_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 277
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 281
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 285
    :cond_7
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_priority_storage"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 289
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_auto_chroma_flash_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 293
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 297
    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 298
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_capture_when_stable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 302
    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isHideHHTMenu()Z

    move-result v0

    if-nez v0, :cond_c

    .line 303
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraASDNightPreference:Landroid/preference/Preference;

    const-string v1, "category_camera_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    goto :goto_0

    .line 304
    :cond_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLabOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraASDNightPreference:Landroid/preference/Preference;

    const-string v1, "category_advance_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    .line 308
    :cond_d
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v0

    if-nez v0, :cond_e

    .line 310
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_snap_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 313
    :cond_e
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v0

    if-nez v0, :cond_f

    .line 314
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_groupshot_with_primitive_picture_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 317
    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-nez v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_portrait_with_facebeauty_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 321
    :cond_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportParallelProcess()Z

    move-result v0

    const-string v1, "pref_camera_parallel_process_enable_key"

    if-nez v0, :cond_11

    .line 322
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 325
    :cond_11
    invoke-static {}, Lcom/android/camera/Device;->isSupportSuperResolution()Z

    move-result v0

    const-string v2, "pref_camera_super_resolution_for_lab_key"

    if-nez v0, :cond_12

    .line 326
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 329
    :cond_12
    invoke-static {}, Lcom/android/camera/Device;->isThirdDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 330
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_facedetection_key"

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 331
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_facedetection_auto_hidden_key"

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 332
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 333
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_front_mirror_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 334
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 335
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 336
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 337
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_autoexposure_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 338
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 341
    :cond_13
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result v0

    if-nez v0, :cond_14

    .line 342
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_proximity_lock_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 345
    :cond_14
    invoke-static {p0}, Lcom/android/camera/Util;->isBackFingerSensor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 346
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_fingerprint_capture_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 368
    :cond_15
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 370
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_16
    return-void
.end method

.method private filterByFrom()V
    .locals 8

    .line 209
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/16 v1, 0xa8

    const/16 v2, 0xa9

    const/16 v3, 0xa2

    const/16 v4, 0xa6

    const/16 v5, 0xa1

    const-string v6, "pref_video_volumekey_function_key"

    const/16 v7, 0xa3

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa5

    if-eq v0, v7, :cond_3

    if-eq v0, v4, :cond_3

    const/16 v7, 0xa7

    if-eq v0, v7, :cond_3

    const/16 v7, 0xac

    if-eq v0, v7, :cond_3

    const/16 v7, 0xab

    if-ne v0, v7, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_2

    .line 222
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_camera_volumekey_function_key"

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 223
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->removeNonVideoPreference()V

    goto :goto_2

    .line 216
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 217
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v6, "category_camcorder_setting"

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 233
    :goto_2
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_5

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->removeIncompatibleAdvancePreference()V

    :cond_5
    return-void
.end method

.method private filterByPreference()V
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_quality_key"

    .line 108
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    const/4 v2, 0x0

    const/16 v3, 0xa1

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 112
    iget-object v5, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_video_quality_key_extra"

    .line 116
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v0, :cond_0

    .line 118
    iget v6, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v6, v3, :cond_0

    .line 119
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x5

    .line 121
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v5, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 123
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->resetIfInvalid(Landroid/preference/ListPreference;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 132
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const-string v1, "pref_video_hfr_key"

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoHighFrame()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 136
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-boolean v4, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v4, :cond_4

    const-string v4, "normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 142
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastMotion()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 146
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_facedetection_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 148
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_portrait_with_facebeauty_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_facedetection_auto_hidden_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 150
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_parallel_process_enable_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_camera_super_resolution_for_lab_key"

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 155
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v0, :cond_7

    .line 157
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 158
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSupportedHfrSettings()Ljava/util/List;

    move-result-object v4

    .line 157
    invoke-virtual {p0, v1, v0, v4, v2}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;Z)V

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 169
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v3, :cond_8

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_9

    .line 173
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoFrontMirror()Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_front_mirror_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method private filterGroup()V
    .locals 1

    const-string v0, "category_device_setting"

    .line 768
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string v0, "category_camcorder_setting"

    .line 769
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string v0, "category_camera_setting"

    .line 770
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string v0, "category_advance_setting"

    .line 771
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    return-void
.end method

.method private filterGroupIfEmpty(Ljava/lang/String;)V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 777
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .line 734
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_0

    return-object p0

    .line 738
    :cond_0
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 742
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private initializeActivity()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 83
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 88
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    const-string v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_asd_night_key"

    .line 93
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraASDNightPreference:Landroid/preference/Preference;

    .line 94
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener()V

    .line 95
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByFrom()V

    .line 96
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByPreference()V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByDeviceID()V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByIntent()V

    .line 99
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterGroup()V

    .line 101
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->updateEntries()V

    .line 102
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private installQRCodeReceiver()V
    .locals 1

    .line 470
    new-instance v0, Lcom/android/camera/BasePreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/BasePreferenceActivity$3;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 479
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private registerListener()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_privacy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_priority_storage"

    .line 192
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_facedetection_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    return-void
.end method

.method private registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4

    .line 412
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 414
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 415
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 416
    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIncompatibleAdvancePreference()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 248
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 249
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private removeNonVideoPreference()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "category_camera_setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private resetIfInvalid(Landroid/preference/ListPreference;)V
    .locals 1

    .line 404
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 405
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 406
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method private resetPreferences()V
    .locals 2

    .line 512
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result p0

    .line 513
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 514
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 515
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 518
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 519
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 521
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const/4 v1, 0x1

    .line 524
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    .line 525
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 526
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 528
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->resetAll()V

    .line 530
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    return-void
.end method

.method private resetSnapSetting()V
    .locals 3

    .line 534
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Street-snap-picture"

    .line 536
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Street-snap-movie"

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "none"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private resetTimeOutFlag()V
    .locals 0

    .line 820
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetPreferences()V

    .line 503
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetSnapSetting()V

    .line 505
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 507
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 506
    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    const/4 v0, 0x3

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    return-void
.end method

.method private updateConflictPreference(Landroid/preference/Preference;)V
    .locals 4

    .line 791
    sget-boolean v0, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 792
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_movie_solid_key"

    .line 794
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 795
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_video_quality_key"

    .line 796
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03f0

    .line 799
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result p1

    .line 798
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 800
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 801
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 803
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_0
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    .line 806
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 807
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 808
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEntries()V
    .locals 7

    .line 619
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_picturesize_key"

    .line 620
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    .line 621
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_camera_antibanding_key"

    .line 622
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewListPreference;

    .line 623
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_auto_chroma_flash_key"

    .line 624
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 625
    iget-object v3, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_video_quality_key"

    .line 626
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PreviewListPreference;

    .line 627
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_snap_key"

    .line 628
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntries()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 632
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 633
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 634
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 637
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f01e9

    .line 640
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 645
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    .line 646
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v1

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    if-eqz v3, :cond_3

    const v0, 0x7f0f03f0

    .line 653
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v0

    .line 652
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 655
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_8

    .line 658
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 659
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 662
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_long_press_volume_down"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "public_transportation_shortcuts"

    .line 664
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "none"

    .line 665
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 668
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 670
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 672
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 674
    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getSnapBoolValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "Street-snap-picture"

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Street-snap-movie"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    .line 677
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 666
    :cond_7
    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 682
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v0, "pref_dualcamera_watermark"

    .line 683
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/CheckBoxPreference;

    if-eqz p0, :cond_9

    .line 685
    invoke-static {}, Lcom/android/camera/Device;->pictureWatermarkDefaultValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 686
    invoke-static {}, Lcom/android/camera/Device;->pictureWatermarkDefaultValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method private updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 710
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 711
    instance-of v4, v3, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v4, :cond_2

    .line 712
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/PreviewListPreference;

    .line 713
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_picturesize_key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 714
    invoke-static {v5}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/PictureSize;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/android/camera/BasePreferenceActivity;->getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 718
    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_2

    .line 719
    :cond_2
    instance-of v4, v3, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 720
    move-object v4, v3

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 721
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 722
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 723
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_2

    .line 724
    :cond_3
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    .line 725
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_2

    .line 728
    :cond_4
    sget-object v4, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need update preference for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateQRCodeEntry()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    .line 692
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 693
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 694
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 696
    sget-object v2, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    const-string v3, "disable QRCodeScan"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v2, 0x0

    .line 698
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 700
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .line 594
    instance-of p1, p0, Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    .line 595
    check-cast p0, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected filterByIntent()V
    .locals 3

    .line 759
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remove_keys"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 762
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/android/camera/ui/PreviewListPreference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;Z)V

    return-void
.end method

.method public filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/android/camera/ui/PreviewListPreference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 384
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    if-nez p4, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    invoke-virtual {p2, p3}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 390
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p3

    array-length p3, p3

    if-lt p3, v1, :cond_3

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p3

    array-length p3, p3

    if-ne p3, v1, :cond_1

    if-nez p4, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 396
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 399
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->resetIfInvalid(Landroid/preference/ListPreference;)V

    return-void

    .line 391
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    .line 385
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method protected abstract getPreferenceXml()I
.end method

.method protected getSnapBoolValue(Ljava/lang/String;)Z
    .locals 1

    const v0, 0x7f0f0356

    .line 610
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f0355

    .line 611
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getSnapStringValue(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0f0356

    .line 603
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0f0354

    .line 605
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetTimeOutFlag()V

    .line 816
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "from_where"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    .line 61
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 62
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 63
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 65
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/android/camera/BasePreferenceActivity;->mStartFromSecureKeyguard:Z

    .line 67
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 750
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetTimeOutFlag()V

    .line 752
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 755
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 547
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 548
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 549
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 550
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 551
    :cond_0
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 552
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 553
    :cond_1
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 554
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 555
    :cond_2
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 556
    move-object v3, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 557
    :cond_3
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 558
    move-object v3, p2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 563
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 565
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/camera/BasePreferenceActivity;->trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    invoke-direct {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    return v0

    .line 560
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled new value with type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    .line 425
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 426
    new-instance v7, Lcom/android/camera/BasePreferenceActivity$1;

    invoke-direct {v7, p0}, Lcom/android/camera/BasePreferenceActivity$1;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const p1, 0x7f0f00bb

    .line 434
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f0f00ba

    .line 435
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const p1, 0x104000a

    .line 436
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 437
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .line 433
    invoke-static/range {v3 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    return v2

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_privacy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-boolean p1, p0, Lcom/android/camera/BasePreferenceActivity;->mStartFromSecureKeyguard:Z

    invoke-static {p0, p1}, Lcom/android/camera/ActivityLauncher;->launchPrivacyPolicyWebpage(Landroid/content/Context;Z)V

    return v2

    .line 446
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_priority_storage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 448
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    .line 447
    invoke-static {p0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_scan_qrcode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 450
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 451
    new-instance v7, Lcom/android/camera/BasePreferenceActivity$2;

    invoke-direct {v7, p0}, Lcom/android/camera/BasePreferenceActivity$2;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const p1, 0x7f0f00b3

    .line 459
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f0f00b2

    .line 460
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f0f015b

    .line 461
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .line 458
    invoke-static/range {v3 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onRestart()V
    .locals 0

    .line 784
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 785
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->updateQRCodeEntry()V

    .line 75
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0079

    const/4 v1, 0x1

    .line 76
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected abstract onSettingChanged(I)V
.end method

.method protected removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    .line 572
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 579
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 581
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 582
    instance-of v5, v4, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 583
    check-cast v4, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v4, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 825
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 826
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    goto :goto_0

    .line 828
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "pref_video_quality_key"

    .line 830
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 831
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    const-string p2, "pref_video_time_lapse_frame_interval_key"

    .line 833
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 835
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 836
    invoke-static {p2}, Lcom/android/camera/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 838
    :catch_0
    sget-object p2, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p2, "pref_camera_jpegquality_key"

    .line 840
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 841
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p2, "pref_camera_picturesize_key"

    .line 842
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 843
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p2, "pref_video_hfr_key"

    .line 844
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 845
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string p2, "pref_camera_autoexposure_key"

    .line 846
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 847
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->autoExposureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    const-string p2, "pref_qc_camera_contrast_key"

    .line 848
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 849
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->contrastToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    const-string p2, "pref_qc_camera_saturation_key"

    .line 850
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 851
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->saturationToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_9
    const-string p2, "pref_qc_camera_sharpness_key"

    .line 852
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 853
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->sharpnessToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    :goto_1
    const-string p2, "settings"

    .line 856
    invoke-static {p2, p1, p0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
