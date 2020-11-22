.class public Lcom/android/camera/fragment/sticker/download/DownloadView;
.super Landroid/widget/RelativeLayout;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
    }
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mRotationAnimal:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->doDownloading()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->rotation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/sticker/download/DownloadView;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doDownloading()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$2;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 141
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p0, [F

    .line 142
    fill-array-data v1, :array_1

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p0, [F

    .line 143
    fill-array-data v2, :array_2

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    aput-object v2, v3, p0

    .line 144
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    :cond_0
    new-instance p1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xfa

    .line 149
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private initView()V
    .locals 2

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 49
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xd

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method private rotation()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 155
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 128
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p0, [F

    .line 129
    fill-array-data v1, :array_1

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p0, [F

    .line 130
    fill-array-data v2, :array_2

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    aput-object v2, v3, p0

    .line 132
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    :cond_0
    new-instance p1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x15e

    .line 137
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 93
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 94
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public endDownloading()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    .line 76
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$3;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setStateImage(I)V
    .locals 3

    const v0, 0x7f080191

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    .line 121
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->endDownloading()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    .line 112
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->doDownloading()V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    const/16 p1, 0x8

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    .line 107
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public startDownload()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$1;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
