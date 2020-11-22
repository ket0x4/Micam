.class public abstract Lcom/android/camera/ui/V6AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mDisableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 28
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 82
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public show(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 56
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06001f

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f060021

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
