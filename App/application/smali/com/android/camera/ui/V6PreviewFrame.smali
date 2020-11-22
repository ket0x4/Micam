.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAspectRatio:F

.field public mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3fe38e39

    .line 17
    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 2

    .line 105
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string v0, "pref_camera_referenceline_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private needReferenceLineMode()Z
    .locals 1

    .line 96
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xab

    if-eq p0, v0, :cond_1

    const/16 v0, 0xac

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public hidePreviewGrid()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 4

    .line 75
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    .line 76
    iget v1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09010b

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLineColor(I)V

    .line 46
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-le p4, p5, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {p5, p4}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    .line 53
    iget v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public updatePreviewGrid()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->needReferenceLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateReferenceLineAccordSquare()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x6

    .line 63
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 64
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 66
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
