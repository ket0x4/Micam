.class public Lcom/android/camera/ui/BottomControlLowerPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlLowerPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION:I


# instance fields
.field private mModuleAnimationCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

.field public mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    :goto_0
    sput v0, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 11

    .line 103
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    div-float v4, p2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v10

    move v2, v4

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object p0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance p2, Landroid/view/animation/TranslateAnimation;

    sget p3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    sub-float/2addr p3, p1

    neg-float v2, p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 11

    .line 79
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    div-float v4, p3, p2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v10

    move v2, v4

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object p0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance p2, Landroid/view/animation/TranslateAnimation;

    sget p3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    sub-float v2, p3, p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090115

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    const v0, 0x7f090110

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    const v0, 0x7f090105

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    const v0, 0x7f09010a

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    const v0, 0x7f090119

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    const v0, 0x7f090118

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v0, v0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 71
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 73
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 74
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickerSwitchAnimation(FFFF)V

    return-void
.end method
