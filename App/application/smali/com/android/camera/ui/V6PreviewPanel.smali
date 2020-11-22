.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field private mHidePreviewCover:Ljava/lang/Runnable;

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mPreviewCover:Landroid/view/View;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    new-instance p1, Lcom/android/camera/ui/V6PreviewPanel$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/V6PreviewPanel$1;-><init>(Lcom/android/camera/ui/V6PreviewPanel;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mHidePreviewCover:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6PreviewPanel;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewCover:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f090117

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa7

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;

    .line 92
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;->playVideo()V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900ff

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    const v0, 0x7f090093

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const v0, 0x7f090117

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    const v0, 0x7f090101

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f090102

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0900fe

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    const v0, 0x7f09011a

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0900b1

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewCover:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    return-void
.end method
