.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mContext:Landroid/content/Context;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeepFocusUIState:Z

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 150
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p5}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 153
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 154
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManagerAbstract;->setMirror(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object p0
.end method

.method private autoFocus(I)V
    .locals 4

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start autoFocus from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 694
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 696
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 699
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 700
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v3, v1}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    .line 702
    :cond_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v3}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    if-eqz v0, :cond_3

    if-eq p1, v2, :cond_3

    .line 707
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->pauseIndicator(I)V

    .line 709
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 710
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 711
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    const/4 v0, 0x2

    .line 720
    invoke-virtual {p0, v0}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 721
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 728
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 730
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 731
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->resumeIndicator(I)V

    :cond_1
    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 734
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 735
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 736
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "FocusManager"

    const-string v0, "cancelAutoFocus"

    .line 738
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private capture()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 745
    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 747
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 748
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 7

    .line 560
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 569
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    .line 572
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {p1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 574
    iget-boolean p1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz p1, :cond_2

    if-nez p4, :cond_2

    .line 575
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 576
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 578
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    const/4 p2, 0x1

    if-ne p1, p3, :cond_3

    .line 580
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 582
    iget-object p4, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {p4, p2}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 583
    iput-boolean p2, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 585
    :cond_3
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 586
    invoke-direct {p0, p2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 587
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 588
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 590
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private getTapAction()I
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "infinity"

    .line 942
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "edof"

    .line 943
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fixed"

    .line 944
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lock"

    .line 945
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    .line 946
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9

    .line 454
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 456
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 460
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    .line 461
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v8, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 460
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeFocusIndicator(III)V
    .locals 1

    .line 490
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_0

    .line 493
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewPosition(III)V

    :cond_0
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 9

    move-object v0, p0

    .line 466
    iget-object v1, v0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    .line 468
    iget-object v1, v0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v4, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa6

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move/from16 v3, p7

    if-ne v3, v2, :cond_1

    if-eqz v1, :cond_1

    .line 477
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isNeedExposure(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 478
    iput-object v1, v0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    return-void

    :cond_1
    const v3, 0x3fe66666    # 1.8f

    .line 484
    iget-object v1, v0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    .line 485
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v8, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 484
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeParameters(IIIZZ)V
    .locals 8

    .line 510
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isFishEye()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 512
    iget-object p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 513
    aget p1, v0, v1

    float-to-int p1, p1

    .line 514
    aget p2, v0, p2

    float-to-int p2, p2

    .line 517
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 518
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 522
    :cond_1
    iget-boolean p4, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    .line 523
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    :cond_2
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "auto"

    .line 954
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "macro"

    .line 955
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isFocusEnabled()Z
    .locals 3

    .line 979
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 980
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFocusValid(I)Z
    .locals 7

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 677
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1388

    :goto_1
    const/4 v6, 0x1

    if-ge p1, v3, :cond_4

    .line 679
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ge p1, v2, :cond_4

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    .line 680
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 684
    :cond_2
    iget p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne p1, v6, :cond_3

    const/4 p1, 0x7

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 681
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    return v6
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 964
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private multiCapture()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 757
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 758
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 759
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 1

    .line 937
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .line 446
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v3, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v4, v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 449
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(III)V

    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 10

    .line 428
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 435
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v6, v1

    .line 436
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v7, v1

    .line 437
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v8, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v9, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setFocusState(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    return-void
.end method


# virtual methods
.method public cancelMultiSnapPending()Z
    .locals 3

    .line 908
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 909
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public doMultiSnap(Z)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 302
    :cond_1
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 308
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 309
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 315
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_1

    .line 303
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_5
    :goto_1
    return-void
.end method

.method public doSnap()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 282
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 288
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    .line 277
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    :cond_4
    :goto_1
    return-void
.end method

.method public focusFaceArea()Z
    .locals 7

    .line 632
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 635
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 639
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v4, v3, :cond_3

    .line 643
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 644
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    return v2

    .line 649
    :cond_3
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 650
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 651
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    div-float/2addr v5, v4

    float-to-int v0, v5

    .line 652
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method public getAeAwbLock()Z
    .locals 0

    .line 929
    iget-boolean p0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return p0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 827
    iget-object p0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    return-object p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 782
    :cond_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 784
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 786
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    const-string v2, "auto"

    const-string v3, "continuous-picture"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 787
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v4, "manual"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iput-object v4, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v4, "continuous-video"

    .line 790
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v4, "macro"

    .line 791
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 792
    :cond_2
    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 796
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 799
    invoke-static {v3, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 800
    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_6

    .line 806
    invoke-static {v2, v0}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 819
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    .line 820
    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 822
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getLastFocusFrom()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    return p0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object p0, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    return-object p0
.end method

.method public isFocusCompleted()Z
    .locals 1

    .line 896
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 1

    .line 904
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAutoFocus(Z)V
    .locals 4

    .line 320
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_0

    .line 325
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 326
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 329
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 332
    iget-boolean p1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_3

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    if-eqz p1, :cond_3

    .line 342
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 343
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 347
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v0, "continuous-picture"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq p1, v3, :cond_5

    .line 350
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {p1, v3}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    goto :goto_2

    .line 353
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 354
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 356
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 359
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iput-boolean v3, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public onAutoFocusMoving(ZZ)V
    .locals 10

    .line 369
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const-string v1, "FocusManager"

    if-nez v0, :cond_0

    const-string p0, "onAutoFocusMoving"

    .line 370
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 379
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    .line 380
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 384
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAutoFocusMoving: mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " show="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v5, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-nez v5, :cond_9

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "continuous-picture"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-eqz p1, :cond_4

    .line 392
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq p1, v5, :cond_3

    .line 393
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    :cond_3
    const-string p1, "Camera KPI: CAF start"

    .line 395
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    if-eqz v2, :cond_9

    .line 398
    invoke-interface {v0, v5, v3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    goto :goto_3

    .line 401
    :cond_4
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 404
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 405
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 407
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 408
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :goto_1
    if-eqz v2, :cond_7

    if-eqz p2, :cond_6

    move p2, v5

    goto :goto_2

    :cond_6
    move p2, v4

    .line 411
    :goto_2
    invoke-interface {v0, v5, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    :cond_7
    if-ne p1, v5, :cond_9

    .line 416
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 417
    iget-boolean p1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz p1, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_3

    .line 420
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    :cond_9
    :goto_3
    return-void
.end method

.method public onCameraReleased()V
    .locals 0

    .line 672
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 6

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 971
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 972
    iget-boolean p2, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz p2, :cond_0

    .line 973
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 662
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    const/4 v0, 0x7

    .line 667
    invoke-virtual {p0, v0}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 668
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    const/4 v0, 0x0

    .line 658
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 3

    .line 529
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    .line 530
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    .line 531
    invoke-direct {p0, v1, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(III)V

    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 5

    .line 193
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v1, :cond_2

    const-string p2, "auto"

    .line 198
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "macro"

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 201
    :cond_1
    iget p2, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne p2, v2, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v4

    :goto_0
    const-string v1, "continuous-picture"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 209
    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq p2, v2, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    .line 212
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xa6

    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p2, :cond_3

    .line 214
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    goto :goto_1

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 219
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 222
    iget-object p2, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result p2

    if-nez p2, :cond_5

    .line 224
    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    .line 225
    iget p2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, p2}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 226
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    :goto_1
    move v3, v4

    :cond_5
    if-nez v3, :cond_7

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 234
    invoke-static {}, Lcom/android/camera/Device;->isHalDoesCafWhenFlashOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne p1, v4, :cond_7

    .line 236
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    goto :goto_2

    .line 239
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    :cond_7
    :goto_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestAutoFocus()V
    .locals 6

    .line 595
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x4

    .line 605
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 607
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v3}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    if-eqz v0, :cond_1

    .line 609
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    .line 611
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 612
    iput-boolean v5, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 613
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    .line 618
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_3
    move v2, v4

    goto :goto_0

    .line 622
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 625
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 626
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 627
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public resetAfterCapture(Z)V
    .locals 2

    .line 881
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0, v1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 885
    iget p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 886
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {p1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 887
    invoke-virtual {p0, v1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 888
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->removeMessages()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 890
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetFocusIndicator(I)V
    .locals 1

    .line 499
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_0

    .line 502
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 765
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 767
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 768
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 772
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetTouchFocus(I)V
    .locals 1

    .line 871
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 872
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 873
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/camera/FocusManager;->resetFocusIndicator(I)V

    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0

    .line 925
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 158
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 159
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 161
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    const-string v2, "auto"

    .line 159
    invoke-static {v2, p1}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 162
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 163
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 164
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 169
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 170
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    .line 171
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method

.method public triggerFocusOnly(II)V
    .locals 7

    .line 544
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x3

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 549
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    .line 550
    iget-object p1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {p1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 552
    iget-boolean p1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz p1, :cond_1

    .line 553
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 554
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateExposure(II)V
    .locals 7

    .line 535
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 540
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFocusUI()V
    .locals 6

    .line 836
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 838
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    if-nez v1, :cond_8

    if-nez v0, :cond_0

    goto :goto_1

    .line 843
    :cond_0
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v2, v1, :cond_1

    .line 844
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 846
    :goto_0
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v3, :cond_5

    const/4 v2, 0x3

    if-eq v4, v2, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 864
    :cond_2
    iget-object p0, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v4, "continuous-picture"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    .line 863
    :cond_3
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    goto :goto_1

    .line 860
    :cond_4
    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    goto :goto_1

    .line 857
    :cond_5
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    goto :goto_1

    :cond_6
    if-ne v1, v3, :cond_7

    const/4 p0, 0x7

    .line 849
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto :goto_1

    .line 851
    :cond_7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    :cond_8
    :goto_1
    return-void
.end method
