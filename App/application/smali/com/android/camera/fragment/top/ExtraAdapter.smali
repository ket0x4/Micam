.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTAG:I

.field private mTextNormalColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    .line 49
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 50
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 51
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 52
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    const p1, -0x4c000001

    .line 53
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    const p1, -0x141415

    .line 54
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    const p1, -0xe66d19

    .line 55
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result p2

    .line 78
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    const/16 v1, 0xa0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v2, -0x1

    move v1, v0

    goto/16 :goto_2

    .line 185
    :pswitch_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800a4

    const v2, 0x7f0f03b8

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f0800a3

    const v2, 0x7f0f01d9

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f0800a8

    const v2, 0x7f0f024f

    .line 180
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    goto/16 :goto_2

    .line 195
    :pswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v2

    .line 198
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    .line 199
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x7f0800b4

    const v2, 0x7f0f033f

    .line 174
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_show_gender_age_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    .line 166
    :pswitch_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    const v1, 0x7f0800bd

    const v2, 0x7f0f02f4

    goto/16 :goto_1

    :pswitch_6
    const v0, 0x7f0800bc

    const v2, 0x7f0f02d8

    .line 162
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_magic_mirror_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_7
    const v0, 0x7f0800b5

    const v2, 0x7f0f00a5

    .line 138
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_8
    const v0, 0x7f0800be

    const v2, 0x7f0f00a8

    .line 144
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_scenemode_setting_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_9
    const v0, 0x7f0800aa

    const v2, 0x7f0f0403

    .line 156
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_video_speed_fast_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_a
    const v0, 0x7f0800c0

    const v2, 0x7f0f0404

    .line 150
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_video_speed_slow_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_b
    const v0, 0x7f0800bb

    const v2, 0x7f0f00a7

    .line 132
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_ubifocus_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_c
    const v0, 0x7f0800ba

    const v2, 0x7f0f00a6

    .line 126
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_hand_night_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_d
    const v0, 0x7f0800c2

    const v2, 0x7f0f00ab

    .line 120
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_gradienter_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 106
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v3

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v0

    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_1
    const v0, 0x7f0f00ad

    const v1, 0x7f0800c3

    move v6, v2

    move v2, v0

    move v0, v1

    move v1, v6

    goto :goto_2

    :pswitch_f
    const v0, 0x7f0800c1

    const v2, 0x7f0f00aa

    .line 102
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v3, "pref_audio_capture"

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 93
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v2

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v0

    :goto_0
    move v1, v2

    move v2, v0

    move v0, v3

    goto :goto_2

    :pswitch_11
    const v1, 0x7f0800a9

    const v2, 0x7f0f00a9

    :goto_1
    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    const v3, 0x7f09004a

    .line 203
    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090049

    .line 204
    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorImageView;

    .line 205
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz v1, :cond_2

    .line 207
    iget v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_3

    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    :goto_3
    if-eqz v1, :cond_3

    .line 208
    iget v5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    goto :goto_4

    :cond_3
    iget v5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .line 209
    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 211
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    if-ne v0, p2, :cond_5

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 217
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 219
    :cond_4
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :goto_5
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/top/ExtraAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/top/ExtraAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExtraAdapter;Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0025

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    iget p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz p0, :cond_0

    int-to-float p0, p0

    .line 67
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 69
    :cond_0
    new-instance p0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setNewDegree(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method public setOnClictTag(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    return-void
.end method
