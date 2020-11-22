.class public Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
.super Ljava/lang/Object;
.source "RecordingStateChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$RecordState;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    return-object p0
.end method

.method private getCurrentModuleIndex()I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onPostSavingFinish()V
    .locals 1

    const-string p0, "RecordingState"

    const-string v0, "onPostSavingFinish"

    .line 218
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 222
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 225
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 227
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 229
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    .line 231
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_0
    return-void
.end method

.method public onPostSavingStart()V
    .locals 5

    const-string v0, "RecordingState"

    const-string v1, "onPostSaving"

    .line 171
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 176
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 178
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 181
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 183
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 185
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction()V

    .line 191
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb6

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_1

    .line 194
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    if-eqz v1, :cond_1

    .line 196
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_2

    .line 203
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepare()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 56
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    .line 60
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 61
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    .line 64
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 65
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    .line 69
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 70
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    .line 71
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    .line 72
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideSpeedTipImage()V

    .line 73
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string p0, "RecordingState"

    const-string v0, "onStart"

    .line 83
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 88
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 34
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
