.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOrientationArea:Lcom/android/camera/ui/RotateLayout;

.field private mOrientationParent:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field public mStereoButton:Lcom/android/camera/ui/StereoButton;

.field public mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/LinearLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 83
    check-cast p1, Lcom/android/camera/ActivityBase;

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 53
    iput-boolean p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance p2, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 88
    check-cast p1, Lcom/android/camera/ActivityBase;

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private createAnimation()V
    .locals 4

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimation: popupHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6PreviewPage"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 384
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "translationY"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    :goto_0
    return-void
.end method

.method private getChildY(Landroid/view/View;)I
    .locals 2

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 421
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq p1, p0, :cond_0

    .line 422
    check-cast p1, Landroid/view/View;

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hasCollapsedPopup()Z
    .locals 1

    .line 413
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "hasCollapsedPopup is not expected"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setupOnLayoutChangeListener()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private updatePopupVisibility(ZZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 408
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateRotateLayout(ILandroid/view/View;)V
    .locals 5

    .line 553
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x9

    .line 554
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xa

    .line 555
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xb

    .line 556
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xc

    .line 557
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v4, -0x1

    if-eqz p1, :cond_3

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 560
    :cond_3
    invoke-virtual {p0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 572
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09010e

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f09010d

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    const v0, 0x7f0900cd

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopPopupParent;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    const v0, 0x7f090027

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    const v0, 0x7f090026

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    const v0, 0x7f090129

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const v0, 0x7f09012a

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900a6

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const v0, 0x7f0900a5

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    const v0, 0x7f090012

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    const v0, 0x7f090097

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f090096

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    const v0, 0x7f090095

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OrientationIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    const v0, 0x7f0900db

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 548
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    .line 549
    iget-object p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6PreviewPage;->updateRotateLayout(ILandroid/view/View;)V

    return-void
.end method

.method public simplifyPopup(ZZ)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simplifyPopup: simplify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6PreviewPage"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_4

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz p2, :cond_2

    .line 231
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    move-result-object p1

    sget-object p2, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-eq p1, p2, :cond_3

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object p2, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 233
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 237
    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    :cond_3
    :goto_0
    return-void

    .line 221
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    const/4 p0, 0x0

    throw p0
.end method
