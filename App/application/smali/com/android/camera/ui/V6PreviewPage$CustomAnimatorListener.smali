.class Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

.field private mIndicatorAndExitDeltaCenter:I

.field private mIndicatorLayoutMaxY:I

.field private mIndicatorLayoutTransY:I

.field private mLayerType:I

.field private mModeExitButtonHalfWidth:F

.field private mModeExitButtonLeft:I

.field private mModeExitButtonRight:I

.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 1

    .line 447
    sget-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .line 452
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    return-void
.end method


# virtual methods
.method public getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationCancel: type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "V6PreviewPage"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd: type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V6PreviewPage"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 502
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 503
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 504
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 505
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p1}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 506
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p1}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 507
    sget-object p1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    .line 508
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p0}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 512
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p1}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 513
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 483
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayerType()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    .line 484
    iget p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 485
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 487
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationStart: type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",layerType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V6PreviewPage"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object p1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 490
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 491
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 524
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 525
    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutTransY:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 526
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, v1, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 527
    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonHalfWidth:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 528
    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    add-int/2addr v1, v0

    .line 529
    iget v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    sub-int/2addr v2, v0

    .line 530
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRight(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/4 v1, 0x0

    .line 532
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v1}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutMaxY:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, v1, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 537
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p0}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-void
.end method

.method public updateParameters()V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v1}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    .line 457
    invoke-static {v1}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, v1, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutMaxY:I

    .line 460
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    .line 461
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    .line 462
    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonHalfWidth:F

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->access$400(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v2, v1, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->access$400(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I

    move-result v1

    sub-int v2, v1, v0

    .line 466
    iget v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutTransY:I

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateParameters: exitView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",exitButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v3}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",exitViewY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V6PreviewPage"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateParameters: indicatorLayout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",indicator="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    .line 470
    invoke-static {p0}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",indicatorLayoutY="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 469
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
