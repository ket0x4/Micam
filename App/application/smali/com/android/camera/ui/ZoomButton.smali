.class public Lcom/android/camera/ui/ZoomButton;
.super Landroid/widget/TextView;
.source "ZoomButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mPopup:Lcom/android/camera/ui/ZoomPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mTouchDownEventOriginX:F

.field private mTouchDownEventPassed:Z

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomPopupAdjusting:Z

.field private mZoomRatio:I

.field private mZoomRatioTele:I

.field private mZoomRatioWide:I

.field private mZoomRequestAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method private getKey()Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPreferenceSize()I
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializePopup()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 141
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomButton"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isPopupShown()Z
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

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

.method private isVisible()Z
    .locals 0

    .line 394
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 395
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result p0

    if-nez p0, :cond_0

    .line 396
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result p0

    if-nez p0, :cond_0

    .line 397
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    .line 398
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private requestZoomRatio(I)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    return-void
.end method

.method private requestZoomRatio(IZ)V
    .locals 1

    .line 358
    iget p0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    if-eq p1, p0, :cond_0

    .line 360
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaa

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz p0, :cond_0

    .line 362
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->onZoomRatioChanged(IZ)V

    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private toggle()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 235
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->reloadPreference()V

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->requestSwitchCamera()V

    return-void
.end method

.method private triggerPopup()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->showPopup()V

    .line 160
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 161
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz p1, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    .line 372
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 182
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->toggle()V

    goto :goto_0

    .line 185
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    aput p1, v1, v3

    iget p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 187
    iget-object p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 188
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-gt p1, v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    aput p1, v1, v3

    aput v0, v1, v2

    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 190
    iget-object p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0, v4, v2}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    .line 193
    iget p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    invoke-direct {p0, p1, v3}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 414
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 415
    invoke-static {p0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->triggerPopup()V

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    return p1

    :cond_0
    return v0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    .line 385
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    .line 204
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    goto :goto_2

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 207
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v4, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 214
    iget-boolean v2, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    if-nez v2, :cond_3

    .line 215
    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    .line 216
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 218
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    .line 219
    iput-boolean v4, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    .line 220
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_5

    .line 223
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 209
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    .line 210
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_5

    .line 211
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    .line 226
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 229
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0398

    .line 102
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v0

    .line 109
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_3

    .line 111
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    if-eq v0, v1, :cond_4

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-ne v0, v1, :cond_6

    .line 118
    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 119
    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    div-int/lit8 v1, v1, 0xa

    .line 120
    div-int/lit8 v2, v1, 0xa

    .line 121
    rem-int/lit8 v1, v1, 0xa

    const/16 v3, 0x21

    if-nez v1, :cond_5

    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 125
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    const-string v2, "X"

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public requestSwitchCamera()V
    .locals 1

    .line 343
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaa

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz p0, :cond_0

    .line 345
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->onZoomSwitchCamera()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 336
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz p0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomPopup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setZoomRatio(I)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    return-void
.end method

.method public showPopup()V
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->initializePopup()V

    .line 264
    iget-object p0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/ZoomPopup;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
