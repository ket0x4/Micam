.class public Lcom/android/camera/ui/ModeView;
.super Landroid/widget/RelativeLayout;
.source "ModeView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field protected mCurrentMode:Ljava/lang/String;

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFirstSelectedItem:I

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field private mItemWidth:I

.field protected mKeepExitButtonGone:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOrientation:I

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "mode_none"

    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "mode_none"

    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "mode_none"

    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    return-void
.end method

.method private resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V
    .locals 1

    .line 147
    iget p1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeView dispatchMessage mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " receiver="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra1="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " extra2="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " getVisibility()="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mEnabled="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VIEW_"

    .line 381
    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 390
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-direct {p0, p5}, Lcom/android/camera/ui/ModeView;->resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    .line 395
    instance-of p2, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz p2, :cond_2

    .line 397
    move-object p2, p5

    check-cast p2, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {p2}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 398
    iget-object p2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 400
    iput p2, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 403
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f09010c

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    instance-of p0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz p0, :cond_3

    const-string p0, "call indicatorbutton reloadPreference"

    .line 405
    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {p5}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

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
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 307
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 309
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 87
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 91
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
