.class Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mIsValueVisible:Z

.field private mLayerType:I

.field private mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 2

    .line 295
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 290
    iput-boolean p2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mIsValueVisible:Z

    .line 291
    iput-object p3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationCancel: animation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "V6ManualPopup"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 318
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",popup="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {p1}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "V6ManualPopup"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0, p1}, Lcom/android/camera/ui/SubScreenPopup;->access$002(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget p0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v0, p0, p1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    .line 337
    iget v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart: layerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",popup="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {p0}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "V6ManualPopup"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 304
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 305
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 307
    iget-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {p1}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 308
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {p0}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-void
.end method
