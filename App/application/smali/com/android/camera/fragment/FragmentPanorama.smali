.class public Lcom/android/camera/fragment/FragmentPanorama;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPanorama.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;
    }
.end annotation


# instance fields
.field private mArrowMargin:I

.field private mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mHintFrame:Landroid/view/View;

.field private mIndicator:Landroid/widget/ImageView;

.field private mMoveDirection:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mUseHint:Landroid/widget/TextView;

.field private mUseHintArea:Landroid/view/View;

.field private mWaitingFirstFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 83
    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentPanorama;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/fragment/FragmentPanorama;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method private setViewMargin(Landroid/view/View;I)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff0

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0044

    return p0
.end method

.method public initPreviewLayout(IIII)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 181
    iput p3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewWidth:I

    .line 182
    iput p4, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewHeight:I

    .line 184
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 185
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iget p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    .line 189
    iget p2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewWidth:I

    mul-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewHeight:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    .line 191
    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    iget p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, p2

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    .line 193
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    .line 90
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f0900a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintArea:Landroid/view/View;

    .line 91
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f090099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    .line 92
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f09009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    .line 96
    sget-boolean p1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    sget v0, Lcom/android/camera/Util;->sStatusBarHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentPanorama;->setViewMargin(Landroid/view/View;I)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f0900a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    .line 100
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    .line 101
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f09009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    .line 103
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    .line 104
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f09009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v0, 0x7f09009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/View;

    .line 107
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 110
    new-instance p1, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentPanorama;Lcom/android/camera/fragment/FragmentPanorama$1;)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    .line 111
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 112
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentPanorama$1;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 117
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 118
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 119
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method public moveToDirection(I)V
    .locals 10

    .line 197
    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 199
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v0

    .line 201
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 202
    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 205
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    move v0, v2

    .line 209
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 210
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput p1, v4, v5

    const-string p1, "translationX"

    .line 209
    invoke-static {v1, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v7, 0x1f4

    .line 211
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    new-array v4, v3, [F

    .line 213
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v9

    aput v9, v4, v6

    aput v0, v4, v5

    const-string v0, "transformationRatio"

    .line 212
    invoke-static {v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-array v4, v3, [F

    .line 217
    invoke-virtual {v1}, Landroid/view/TextureView;->getAlpha()F

    move-result v7

    aput v7, v4, v6

    aput v2, v4, v5

    const-string v2, "alpha"

    .line 216
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0xfa

    .line 218
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    invoke-static {v4, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    new-instance v4, Lcom/android/camera/fragment/FragmentPanorama$2;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/FragmentPanorama$2;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v3, [Landroid/animation/Animator;

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    .line 236
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 238
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    aput-object v4, v2, v3

    .line 239
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 240
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 432
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 434
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa6

    if-ne p1, v0, :cond_0

    .line 435
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->showSmallPreview(Z)V

    :cond_0
    return-void
.end method

.method public onCaptureOrientationDecided(III)V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0f01b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 330
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setDisplayCenterY(I)V

    .line 331
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttribute(III)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->trackDirectionChanged(I)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->trackDirectionChanged(I)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V

    .line 159
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setPanoramaMoveDirection(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 340
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 341
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 342
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPreviewMoving()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v0, 0x7f0f01b3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v0, 0x7f0f01b1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v0, 0x7f0f01b2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 347
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 413
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_1

    .line 419
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb0

    .line 139
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetShootUI()V
    .locals 2

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 265
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v0, 0x7f0f01b4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setDirectionPosition(Landroid/graphics/Point;I)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    return-void
.end method

.method public setDirectionTooFast(ZI)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setTooFast(ZI)V

    return-void
.end method

.method public setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setShootUI()V
    .locals 3

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSmallPreview(Z)V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 273
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 274
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 275
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 279
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 280
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    .line 287
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 289
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    if-eqz p1, :cond_2

    .line 293
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x258

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 295
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method protected trackDirectionChanged(I)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    const-string p1, "\u4ece\u5de6\u5f80\u53f3"

    goto :goto_0

    :cond_1
    const-string p1, "\u4ece\u53f3\u5f80\u5de6"

    :goto_0
    const-string v0, "\u65b9\u5411"

    .line 172
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "panorama_direction_changed"

    .line 175
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb0

    .line 145
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
