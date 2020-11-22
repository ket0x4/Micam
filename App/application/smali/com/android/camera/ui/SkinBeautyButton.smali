.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSubDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 34
    new-instance p1, Lcom/android/camera/ui/SkinBeautyButton$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/SkinBeautyButton$1;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance p1, Lcom/android/camera/ui/SkinBeautyButton$2;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/SkinBeautyButton$2;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 31
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private findCurrentIndex()I
    .locals 1

    .line 197
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isPopupShown()Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f0900d7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 263
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method protected dismissSubPopup()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 p2, 0x3

    const-string p3, "pref_camera_face_beauty_advanced_key"

    const-string v0, "pref_camera_face_beauty_key"

    if-eq p1, p2, :cond_4

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 224
    :cond_0
    instance-of p1, p5, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    .line 226
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    .line 227
    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 229
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto :goto_1

    .line 230
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_1

    .line 237
    :cond_4
    instance-of p1, p4, Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    .line 238
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 239
    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    const v3, 0x7f0900d7

    const/4 v4, 0x3

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    .line 240
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_7

    .line 248
    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 249
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_1

    .line 253
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected initializePopup()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkinBeautyButton"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_1
    return-void
.end method

.method protected initializeSubPopup()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    .line 276
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    .line 281
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 48
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120002

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/android/camera/ui/V6AbstractSettingPopup;

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 148
    invoke-interface {v0, v1, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method protected showSubPopup()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializeSubPopup()V

    .line 100
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-interface {v0, v1, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 111
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method
