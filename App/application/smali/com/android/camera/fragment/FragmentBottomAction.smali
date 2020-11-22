.class public Lcom/android/camera/fragment/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;
.implements Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;


# instance fields
.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mCameraPickEnable:Z

.field private mCameraPicker:Landroid/view/View;

.field private mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mFilterLayout:Landroid/view/View;

.field private mFilterListHeight:I

.field private mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInLoading:Z

.field private mIsIntentAction:Z

.field private mIsShowFilter:Z

.field private mLongPressBurst:Z

.field private mModeSelectLayout:Landroid/view/View;

.field private mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mOnCreated:Z

.field private mPostProcess:Landroid/widget/ProgressBar;

.field private mRecordingPause:Landroid/widget/ImageView;

.field private mRecordingSnap:Landroid/widget/ImageView;

.field private mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field private mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

.field private mThumbnailImage:Landroid/widget/ImageView;

.field private mThumbnailImageLayout:Landroid/view/ViewGroup;

.field private mThumbnailProgress:Landroid/widget/ProgressBar;

.field private mV9bottomParentLayout:Landroid/widget/RelativeLayout;

.field private mVideoCaptureEnable:Z

.field private mVideoPauseSupported:Z

.field private mVideoRecordingStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 129
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    return p0
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 1

    const p0, 0x7f060011

    const/16 v0, 0xa5

    if-ne p2, v0, :cond_0

    .line 382
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 386
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 390
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f06001f

    .line 395
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private initThumbLayoutByIntent()V
    .locals 4

    .line 239
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 241
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    return-void

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 257
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isInMovieSolidMode()Z
    .locals 1

    .line 979
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa2

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isThumbLoading()Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    return p0
.end method

.method private prepareRecording()V
    .locals 5

    .line 806
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 808
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    const/16 v4, 0xa6

    if-eq v2, v4, :cond_0

    if-eq v2, v1, :cond_0

    .line 809
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    .line 814
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 815
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    .line 817
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    .line 818
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording()V

    return-void
.end method

.method private resetBottom()V
    .locals 4

    .line 595
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    const/16 v2, 0xac

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 613
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->setProgressBarVisible(I)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    .line 617
    invoke-direct {p0, v3, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    .line 604
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 606
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 608
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 609
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    .line 610
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    :goto_0
    return-void
.end method

.method private setProgressBarVisible(I)V
    .locals 4

    .line 1655
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 1660
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 1661
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-array p1, v2, [F

    .line 1662
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1663
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    .line 1664
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1665
    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1666
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$10;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$10;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1675
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1677
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    new-array p1, v2, [F

    .line 1680
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1681
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1682
    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1683
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$11;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$11;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1690
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$12;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$12;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1711
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateBottomInRecording(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 822
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    return-void
.end method

.method private updateBottomInRecording(ZZ)V
    .locals 4

    .line 826
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p0, "FragmentBottomAction"

    const-string p1, "Warning: update UI in worker thread. Do nothing"

    .line 827
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 833
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 837
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v0, 0xa6

    if-eq v1, v0, :cond_4

    const/16 v0, 0xa8

    if-eq v1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq v1, v0, :cond_2

    .line 839
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 840
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_1

    .line 846
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 847
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 849
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto :goto_1

    .line 866
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 867
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_1

    .line 854
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 855
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    goto :goto_0

    .line 857
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    .line 859
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 860
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 862
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 871
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 872
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 874
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 875
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 880
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 881
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f080140

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 882
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 883
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 884
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 889
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 890
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 893
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    .line 894
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    const-wide/16 v1, 0xfa

    goto :goto_2

    :cond_b
    const-wide/16 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 895
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$4;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 919
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$5;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 966
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public canSnap()Z
    .locals 1

    .line 1350
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    .line 1352
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public changeMode(II)V
    .locals 3

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 992
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 997
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_2

    .line 998
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 999
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeMode, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mode is busy do nothing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1008
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    .line 1009
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1016
    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 1017
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 1018
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 1019
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->markPerformed()V

    .line 1022
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p0

    .line 1023
    invoke-virtual {p0, p2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    const/4 p1, 0x3

    .line 1024
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    const/4 p1, 0x1

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 1027
    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    .line 1022
    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public filterUiChange()V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b000c

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mOnCreated:Z

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f09011b

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 163
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/camera/Util;->sNavigationBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 166
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    const v0, 0x7f09008c

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v1, 0x7f09008d

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EdgeHorizonScrollView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 173
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeSelectView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    .line 175
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ModeSelectView;->setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V

    const v0, 0x7f090126

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 179
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v0, 0x7f090120

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09011f

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v0, 0x7f090122

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f09011c

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    const v0, 0x7f090121

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v0, 0x7f090051

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f09011e

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    .line 199
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 206
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;)V

    .line 208
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 210
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 211
    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 217
    new-instance p1, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p1}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    .line 218
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    .line 219
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v3}, Lcom/android/camera/Util;->setAccessibilityFocusable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public isShowFilter()Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return p0
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1312
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1313
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    .line 1314
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eq p1, p2, :cond_0

    .line 1315
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 1316
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 1317
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    :cond_0
    const/4 p1, 0x0

    .line 1319
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 1320
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 1322
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1606
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz p1, :cond_1

    .line 1607
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 1608
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1609
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 1610
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1611
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateContentDescription()V

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 663
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    .line 673
    invoke-interface {v1}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v1

    const-string v2, "FragmentBottomAction"

    if-eqz v1, :cond_2

    const-string p0, "onClick: ignore click event, because module isn\'t ready"

    .line 674
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 678
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v3, 0xa8

    const/16 v4, 0xa9

    const/16 v5, 0xa2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_7

    .line 680
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 683
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 684
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto/16 :goto_7

    .line 686
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto/16 :goto_7

    .line 790
    :sswitch_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    if-ne p1, v5, :cond_7

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_6

    goto :goto_0

    .line 797
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 798
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    .line 799
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->capture()Z

    goto/16 :goto_7

    :cond_7
    :goto_0
    return-void

    .line 776
    :sswitch_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    if-ne p1, v5, :cond_a

    :cond_8
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_9

    goto :goto_1

    .line 784
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 785
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    .line 786
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_7

    :cond_a
    :goto_1
    return-void

    .line 692
    :sswitch_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 695
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 698
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 699
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_d

    move v9, v8

    goto :goto_2

    :cond_d
    move v9, v7

    .line 704
    :goto_2
    invoke-virtual {v1, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    const-wide/16 v10, 0x12c

    if-ne v9, v8, :cond_e

    .line 707
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_3

    .line 709
    :cond_e
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 712
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 713
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    .line 714
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 716
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v8

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v10

    const-string v10, "switch camera from %d to %d, for module 0x%x"

    .line 714
    invoke-static {p1, v10, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v8, :cond_f

    move p1, v8

    goto :goto_4

    :cond_f
    move p1, v7

    :goto_4
    if-ne v9, v8, :cond_10

    move v7, v8

    .line 717
    :cond_10
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, v7, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    .line 719
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v5, :cond_12

    if-eq p1, v3, :cond_11

    if-eq p1, v4, :cond_11

    .line 721
    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    goto :goto_6

    .line 736
    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 737
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 738
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 739
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 737
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_6

    :cond_12
    if-nez v9, :cond_14

    .line 746
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p1

    .line 747
    invoke-interface {p1}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoFastMotion()Z

    move-result v1

    if-eqz v1, :cond_13

    move v3, v4

    goto :goto_5

    .line 749
    :cond_13
    invoke-interface {p1}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    :cond_14
    move v3, v5

    :goto_5
    if-eq v3, v5, :cond_15

    .line 755
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 756
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 757
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 758
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 756
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_6

    .line 760
    :cond_15
    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    .line 765
    :goto_6
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz p1, :cond_16

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 769
    :cond_16
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 770
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 771
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const p1, 0x8000

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->sendAccessibilityEvent(I)V

    :cond_17
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09011c -> :sswitch_3
        0x7f09011f -> :sswitch_2
        0x7f090121 -> :sswitch_1
        0x7f090126 -> :sswitch_0
    .end sparse-switch
.end method

.method public onModeClicked(I)V
    .locals 1

    const/4 v0, 0x0

    .line 972
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    return-void
.end method

.method public onReleaseRecording()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string v1, "onReleaseRecording: "

    .line 1598
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 227
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    .line 229
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    :cond_1
    return-void
.end method

.method public onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 1403
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v0, :cond_0

    return-void

    .line 1406
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 1407
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    .line 1408
    invoke-interface {p0, p1, p2}, Lcom/android/camera/module/Module;->onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public onSnapClick()V
    .locals 5

    .line 1413
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1416
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1419
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    if-eqz v0, :cond_2

    .line 1420
    invoke-interface {v0}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    .line 1421
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1426
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_3

    return-void

    .line 1432
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xab

    .line 1433
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1434
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const-string v3, "onSnapClick"

    .line 1435
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_6

    .line 1439
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 1442
    :cond_4
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 1445
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 1452
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v1, :cond_7

    .line 1453
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    const/4 v1, 0x1

    .line 1454
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 1457
    :cond_7
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 1462
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1463
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v1, 0x7f0f0017

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1464
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->sendAccessibilityEvent(I)V

    :cond_8
    return-void
.end method

.method public onSnapLongPress()V
    .locals 3

    .line 1470
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1474
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    .line 1480
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1511
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xab

    .line 1512
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1513
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPress"

    .line 1514
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1517
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    :cond_3
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    .line 1542
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1546
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelIn"

    .line 1552
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1553
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 1555
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xab

    if-eq v0, v1, :cond_2

    const/16 v1, 0xac

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1572
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 1560
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1561
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    goto :goto_0

    .line 1563
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    :goto_0
    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    .line 1523
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1527
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelOut"

    .line 1532
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1533
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 1535
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_2

    .line 1536
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    :cond_2
    return-void
.end method

.method public onSnapLongReachLimit()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 2

    .line 1357
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1361
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "FragmentBottomAction"

    const-string v1, "onSnapPrepare"

    .line 1366
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1367
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onStartRecording()V
    .locals 3

    const-string v0, "FragmentBottomAction"

    const-string v1, "onStartRecording"

    .line 1579
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 1583
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1584
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string v1, "onStopRecording"

    .line 1590
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 2

    .line 1373
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1377
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez p0, :cond_1

    return-void

    .line 1382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSnapMissTaken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 2

    .line 1388
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1392
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez p0, :cond_1

    return-void

    .line 1397
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSnapTaken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 587
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    goto :goto_0

    .line 589
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    :goto_0
    return-void
.end method

.method public processingFailed()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->updateLoading(Z)V

    .line 581
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 572
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    return-void
.end method

.method public processingPause()V
    .locals 2

    .line 535
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 541
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x3

    .line 545
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :goto_0
    return-void
.end method

.method public processingPostAction()V
    .locals 3

    .line 1645
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 1649
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    const/4 v0, 0x1

    .line 1650
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 1651
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public processingPrepare()V
    .locals 1

    const/4 v0, 0x1

    .line 1624
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 1625
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording()V

    return-void
.end method

.method public processingResume()V
    .locals 2

    .line 552
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    .line 558
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x4

    .line 562
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :goto_0
    return-void
.end method

.method public processingStart()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 513
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    .line 522
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    :goto_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1101
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v0, 0x0

    .line 1103
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->processingAudioCapture(Z)V

    .line 1105
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/FragmentFilter;->isShowAnimation(Ljava/util/List;)V

    :cond_0
    const/16 v1, 0xa5

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1116
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 1118
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/camera/ui/ModeSelectView;->judgePosition(ILjava/util/List;Z)V

    const/16 v1, 0xa6

    const/4 v3, -0x1

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_5

    const/16 v1, 0xab

    if-eq p1, v1, :cond_3

    const/16 v1, 0xac

    if-eq p1, v1, :cond_5

    .line 1124
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    :goto_2
    move v3, v2

    goto :goto_3

    .line 1128
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1130
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1133
    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_3

    .line 1140
    :cond_5
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    .line 1144
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_6

    return-void

    .line 1147
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-ne v3, v2, :cond_8

    if-nez p2, :cond_7

    .line 1151
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_4

    .line 1153
    :cond_7
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-nez p2, :cond_9

    .line 1157
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_4

    .line 1159
    :cond_9
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 1174
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x96

    .line 1175
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0xa2

    aput v1, p0, v0

    .line 1183
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1301
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1303
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 629
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb3

    .line 630
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    .line 631
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc0

    .line 632
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 633
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc2

    .line 634
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 635
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public selectMode(II)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1039
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const v3, 0x800005

    const v4, 0x800003

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_1
    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 1053
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_6

    :cond_5
    const/16 v0, 0xa2

    .line 1061
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_8

    .line 1063
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v6, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v6

    if-ne v6, v0, :cond_7

    move v2, v5

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    if-lez v2, :cond_b

    add-int/lit8 v2, v2, -0x1

    .line 1084
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result p1

    .line 1085
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 376
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public showOrHideFilter()V
    .locals 12

    .line 286
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    const/high16 v1, 0x42480000    # 50.0f

    const-wide/16 v2, 0x96

    const/4 v4, 0x1

    const v5, 0x3f666666    # 0.9f

    const-wide/16 v6, 0x12c

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v10, 0x32

    invoke-virtual {v0, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v10, 0xfa

    invoke-virtual {v0, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v10, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 290
    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 291
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget v10, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v10, v10

    invoke-static {v0, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v10, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 293
    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 296
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 300
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 301
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 303
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 304
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 306
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 324
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 325
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const v1, 0x7f0f0020

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 333
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 336
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 337
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 340
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 343
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 344
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 347
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 365
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 367
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return-void
.end method

.method public switchFilter(I)Z
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_2

    .line 269
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->switchFilter(I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 640
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xb3

    .line 642
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    .line 643
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc0

    .line 644
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 645
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc2

    .line 646
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 647
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 648
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 650
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz p0, :cond_0

    .line 651
    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 653
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public updateLoading(Z)V
    .locals 2

    if-nez p1, :cond_2

    .line 484
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 487
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 488
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1

    .line 490
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 495
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 504
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 505
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 407
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v0, :cond_1

    return-void

    .line 415
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xac

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 420
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const p1, 0x7f080161

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 428
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 430
    invoke-virtual {p1, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_4

    return-void

    .line 457
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 458
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 459
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 460
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 p1, 0x50

    .line 461
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 462
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
