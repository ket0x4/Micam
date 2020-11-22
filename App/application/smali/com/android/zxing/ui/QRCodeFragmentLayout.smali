.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;

.field private mViewFinderButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    const v0, 0x7f0900b2

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;

    invoke-direct {v1, p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;-><init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
