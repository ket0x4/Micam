.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 3

    const-string v0, "layout_inflater"

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const-string v0, "pref_qc_camera_iso_key"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0b0056

    const v2, 0x7f0b0030

    if-eqz v0, :cond_0

    const v1, 0x7f0b0032

    goto/16 :goto_5

    :cond_0
    const-string v0, "pref_qc_camera_manual_exposure_key"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto/16 :goto_5

    :cond_1
    const-string v0, "pref_delay_capture_mode"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v0, "pref_skin_beautify_skin_color_key"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "pref_skin_beautify_slim_face_key"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "pref_skin_beautify_skin_smooth_key"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "pref_skin_beautify_enlarge_eye_key"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "pref_camera_whitebalance_key"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v1, 0x7f0b002b

    goto/16 :goto_5

    :cond_4
    const-string v0, "pref_focus_position_key"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v1, 0x7f0b0031

    goto/16 :goto_5

    :cond_5
    const-string v0, "pref_camera_manual_mode_key"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "pref_camera_face_beauty_advanced_key"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v0, "pref_qc_camera_exposuretime_key"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "pref_camera_scenemode_setting_key"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v1, 0x7f0b002a

    goto/16 :goto_5

    :cond_8
    const-string v0, "pref_camera_stereo_mode_key"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v1, 0x7f0b0049

    goto/16 :goto_5

    :cond_9
    const-string v0, "pref_audio_focus_mode_key"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "pref_delay_capture_key"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "pref_camera_tilt_shift_mode"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "pref_camera_face_beauty_key"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    const-string v0, "pref_camera_flashmode_key"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "pref_camera_video_flashmode_key"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "pref_camera_hdr_key"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "pref_video_hdr_key"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "pref_camera_face_beauty_switch_key"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    const-string v0, "pref_camera_shader_coloreffect_key"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v1, 0x7f0b0007

    goto :goto_5

    :cond_c
    const-string v0, "pref_camera_face_beauty_mode_key"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    const-string v0, "pref_camera_zoom_mode_key"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const v1, 0x7f0b005e

    goto :goto_5

    :cond_e
    const/4 p0, 0x0

    return-object p0

    :cond_f
    :goto_1
    const v1, 0x7f0b0028

    goto :goto_5

    :cond_10
    :goto_2
    const v1, 0x7f0b002d

    goto :goto_5

    :cond_11
    :goto_3
    const v1, 0x7f0b004b

    goto :goto_5

    :cond_12
    :goto_4
    const v1, 0x7f0b0059

    :goto_5
    const/4 p0, 0x0

    .line 63
    invoke-virtual {p2, v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p0
.end method
