.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field protected mDisplayColumnNum:I

.field protected mGridView:Landroid/widget/GridView;

.field protected mGridViewHeight:I

.field protected mHasImage:Z

.field protected mIgnoreSameItemClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "GridSettingPopup"

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 p1, 0x5

    .line 31
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    .line 34
    iput-boolean p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 0

    const p0, 0x7f0b0029

    return p0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 3

    .line 82
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    .line 83
    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    if-ne p1, v1, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    :goto_0
    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    invoke-direct {v1, p1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 8

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 44
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object p2

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object p2

    .line 51
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    array-length v3, p1

    const-string v4, "image"

    const-string v5, "text"

    if-ge v1, v3, :cond_2

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    aget-object v6, p1, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 56
    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-eqz p2, :cond_4

    .line 61
    iget-boolean p2, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    if-nez p2, :cond_3

    goto :goto_1

    .line 65
    :cond_3
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_0

    move-object v5, p2

    move-object v6, v0

    goto :goto_2

    .line 62
    :cond_4
    :goto_1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    new-array v1, v7, [I

    const v3, 0x7f0900e0

    aput v3, v1, v0

    move-object v5, p2

    move-object v6, v1

    .line 68
    :goto_2
    new-instance p2, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getItemResId()I

    move-result v4

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 73
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    .line 74
    iget-object p3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p3, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object p2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    array-length p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 76
    iget-object p2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2, v7}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 77
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->initGridViewLayoutParam(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090064
        0x7f0900e0
    .end array-data
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 149
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 153
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    .line 149
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 130
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    if-eqz v0, :cond_1

    return-void

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 132
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 134
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, p1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 136
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_audio_focus_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 143
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->notifyToDispatcher(Z)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0900d3

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    .line 170
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 91
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "GridSettingPopup"

    const-string v1, "Invalid preference value."

    .line 94
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 180
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 160
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "auto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 162
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_0
    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
