.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private mAgeFemaleHonPadding:I

.field private mAgeMaleHonPadding:I

.field private mAgeVerPadding:I

.field private mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mCanvasRect:Landroid/graphics/RectF;

.field private mCorrection:I

.field private mEffectRectPaint:Landroid/graphics/Paint;

.field private mFaceAgeFormat:Ljava/lang/String;

.field private mFaceInfoNumberPaint:Landroid/graphics/Paint;

.field private mFaceInfoTextPaint:Landroid/graphics/Paint;

.field private mFacePopupBottom:I

.field private mFaceRectHideAnimator:Landroid/animation/Animator;

.field private mFaceScoreInfoFormat:Ljava/lang/String;

.field private mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mGap:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraFaceDetectionAutoHidden:Z

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mNormalRectPaint:Landroid/graphics/Paint;

.field private mOrientation:I

.field private mPopBottomMargin:I

.field private mRect:Landroid/graphics/RectF;

.field private mRectState:I

.field private mScoreHonPadding:I

.field private mScoreVerPadding:I

.field private mSexFemaleIc:Landroid/graphics/drawable/Drawable;

.field private mSexMaleIc:Landroid/graphics/drawable/Drawable;

.field private mShowGenderAndAge:Z

.field private mShowMagicMirror:Z

.field private mSkipDraw:Z

.field private mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

.field private mWinnerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 71
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 109
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    const/4 p2, 0x1

    .line 137
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 145
    new-instance v0, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FaceView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private attemptHideFaceRect()V
    .locals 4

    const/4 v0, 0x3

    .line 287
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private cancelHideAnimator()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearAttemptHideFaceRect()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 294
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    .line 295
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 5

    .line 742
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 744
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+\\.?\\d*"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    .line 750
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    .line 753
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    int-to-float p3, p3

    add-float/2addr p3, v1

    float-to-int p3, p3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 688
    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    .line 690
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 691
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\d+\\.?\\d*"

    .line 692
    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 693
    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    goto :goto_1

    .line 695
    :cond_0
    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    :goto_1
    add-float/2addr v9, v10

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v6

    iget v10, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v7, v9

    int-to-float v10, v6

    add-float/2addr v7, v10

    float-to-int v7, v7

    move/from16 v10, p7

    int-to-float v10, v10

    const v11, 0x40666666    # 3.6f

    mul-float/2addr v11, v10

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 710
    new-instance v12, Landroid/graphics/Rect;

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    float-to-int v13, v13

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v13, v7

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    sub-int/2addr v14, v11

    sub-int v14, v14, p9

    sub-int v14, v14, p8

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v7

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    sub-int v2, v2, p9

    invoke-direct {v12, v13, v14, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v4, :cond_2

    .line 717
    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 718
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 721
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 723
    iget v4, v12, Landroid/graphics/Rect;->left:I

    add-int v7, v4, v6

    iget v11, v12, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const v13, 0x3fe66666    # 1.8f

    mul-float/2addr v10, v13

    add-float/2addr v11, v10

    iget v13, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    float-to-int v11, v11

    add-int/2addr v4, v6

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    iget v10, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 723
    invoke-virtual {v2, v7, v11, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 729
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 730
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v3, v9, v8

    if-eqz v3, :cond_3

    .line 734
    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 735
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v6, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v4, v6

    .line 736
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 737
    invoke-direct {p0, v1, v5, v4, v6}, Lcom/android/camera/ui/FaceView;->drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_7

    const v0, 0x3c75c28f    # 0.015f

    if-eqz p3, :cond_6

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto :goto_2

    .line 657
    :cond_0
    iget p3, p4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_1

    return-void

    .line 660
    :cond_1
    iget-object p3, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    const/16 p4, -0x47c9

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 661
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v0

    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 669
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 672
    :cond_3
    iget p3, p4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const p4, 0x3ecccccd    # 0.4f

    cmpg-float p3, p3, p4

    if-gez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 673
    :goto_0
    iget-object p3, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    const p4, -0x11957f

    goto :goto_1

    :cond_5
    const p4, -0x90480c

    :goto_1
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v0

    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 665
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v0

    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private getAgeInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 3

    .line 560
    iget v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    float-to-int v0, v0

    .line 561
    iget v1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 562
    iget p1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    float-to-int v0, p1

    .line 564
    :cond_0
    sget-object p1, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPopShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 766
    array-length v2, p1

    if-lez v2, :cond_6

    .line 767
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    .line 769
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    move v3, v0

    .line 770
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 771
    aget-object v4, p1, v0

    .line 772
    iget v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 774
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v5, v2, :cond_0

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 775
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v1, :cond_3

    const/4 p0, 0x2

    :goto_1
    move v0, p0

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    const/4 p0, 0x4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 786
    :cond_5
    iget-boolean p0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method private getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 3

    .line 568
    sget-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initFaceInfoStyle()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "(\\D+)|(\\d+\\.?\\d*)"

    .line 183
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0109

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const v1, 0x7f0f012c

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const v1, 0x7f080198

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08005c

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08015c

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08015b

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    .line 197
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f070061

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 201
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 206
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    .line 207
    sget-object v2, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 208
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 210
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const v3, 0x3f947ae1    # 1.16f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    const v1, 0x7f080196

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08008c

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f070067

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    const v1, 0x7f070066

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    const v1, 0x7f07005f

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    const v1, 0x7f070068

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    const v1, 0x7f070064

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    const v1, 0x7f070065

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    const v1, 0x7f070062

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    const v1, 0x7f070060

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    return-void
.end method

.method private isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 1

    .line 799
    iget p0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->prob:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_1

    iget p0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const p1, 0x3ecccccd    # 0.4f

    cmpg-float p1, p0, p1

    if-lez p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setToVisible()V
    .locals 1

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shouldShowMagicMirror()Z
    .locals 1

    .line 794
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showNormalFaceRectImmediately()V
    .locals 2

    const/4 v0, 0x1

    .line 281
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 282
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    return-void
.end method

.method private updateLatestFaces()V
    .locals 6

    .line 349
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 350
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 352
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget p0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x0

    aput-object v1, v0, p0

    goto :goto_2

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v1

    .line 359
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 360
    aget-object v3, v1, v2

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    if-le v3, v5, :cond_2

    .line 362
    aget-object v0, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget p0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v1, p0

    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v0, 0x1

    .line 500
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 501
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    const/4 v0, -0x1

    .line 519
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 522
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public forceHideRect()V
    .locals 2

    .line 306
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 307
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    const/16 v1, 0xc8

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    :cond_0
    return-void
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-object p0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 10

    .line 378
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v2, :cond_0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 384
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v5, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 385
    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v7

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 384
    invoke-static/range {v3 .. v9}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 387
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 388
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 389
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFaceStable()Z
    .locals 12

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v9, v0, v3

    if-nez v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_1

    return v2

    .line 408
    :cond_0
    iget-object v9, v9, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 409
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v9

    add-int/2addr v6, v10

    add-int/2addr v7, v11

    add-int/2addr v8, v9

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    sub-int/2addr v0, v4

    .line 414
    div-int/2addr v5, v0

    .line 415
    div-int/2addr v6, v0

    .line 416
    div-int/2addr v7, v0

    .line 417
    div-int/2addr v8, v0

    .line 418
    div-int/lit8 v0, v5, 0x3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 421
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v9, v1, v4

    if-nez v9, :cond_4

    goto :goto_3

    .line 425
    :cond_4
    iget-object v10, v9, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v10

    sub-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v0, :cond_6

    iget-object v10, v9, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v7

    .line 426
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x78

    if-gt v10, v11, :cond_6

    iget-object v9, v9, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    .line 427
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v11, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return v2

    :cond_7
    const/16 v0, 0x29e

    const/4 v1, 0x1

    if-gt v5, v0, :cond_8

    if-le v6, v0, :cond_9

    :cond_8
    move v2, v1

    .line 432
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 372
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 373
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 374
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 573
    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v12

    .line 577
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    if-eqz v12, :cond_d

    iget-boolean v0, v10, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-nez v0, :cond_d

    .line 578
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 579
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 580
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, v10, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v3, v10, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 581
    invoke-virtual {v12}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v4

    invoke-virtual {v12}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v5

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v13, 0x2

    div-int/lit8 v6, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 580
    invoke-static/range {v1 .. v7}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 583
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v10, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 584
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget v1, v10, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 586
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 587
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I

    move-result v14

    .line 588
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v15

    const/16 v16, 0x0

    move/from16 v9, v16

    .line 589
    :goto_0
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v0

    if-ge v9, v1, :cond_c

    .line 590
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 591
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 593
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 594
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz v15, :cond_1

    .line 596
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isContains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 599
    :cond_1
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v9

    invoke-direct {v10, v11, v0, v14, v1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    const/4 v0, 0x1

    if-eq v14, v0, :cond_6

    const/4 v0, 0x0

    if-eq v14, v13, :cond_4

    const/4 v1, 0x4

    if-eq v14, v1, :cond_2

    :goto_1
    move/from16 v18, v9

    goto/16 :goto_6

    .line 629
    :cond_2
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    goto :goto_1

    .line 632
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 633
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    .line 634
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v1, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v9

    move/from16 v9, v17

    .line 633
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto/16 :goto_6

    :cond_4
    move/from16 v18, v9

    .line 616
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v18

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    goto/16 :goto_6

    .line 620
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 621
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v18

    .line 622
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 621
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_6

    :cond_6
    move/from16 v18, v9

    .line 604
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v18

    invoke-direct {v10, v1}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 606
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v18

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v0, v16

    .line 607
    :goto_2
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v18

    invoke-direct {v10, v1}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    .line 608
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_8
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    :goto_3
    move-object v3, v1

    if-eqz v0, :cond_9

    .line 609
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_9
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    :goto_4
    move-object v4, v1

    if-eqz v0, :cond_a

    .line 610
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    goto :goto_5

    :cond_a
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    :goto_5
    move v6, v0

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 608
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    :cond_b
    :goto_6
    add-int/lit8 v9, v18, 0x1

    goto/16 :goto_0

    .line 640
    :cond_c
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    return-void
.end method

.method public pause()V
    .locals 0

    .line 507
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 508
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    return-void
.end method

.method public reShowFaceRect()V
    .locals 2

    .line 317
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 515
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraFaceDetectionAutoHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1

    .line 438
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCameraDisplayOrientation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceView"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFaceRectVisible(II)V
    .locals 2

    .line 325
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    if-nez p2, :cond_1

    .line 327
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 331
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    .line 332
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/camera/ui/FaceView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$2;-><init>(Lcom/android/camera/ui/FaceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 340
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 341
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Num of faces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceView"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 238
    array-length v0, p1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 239
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v2, :cond_3

    array-length v2, v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    move v1, v3

    .line 243
    :cond_4
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 244
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 248
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-nez p1, :cond_8

    .line 250
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    if-lez v0, :cond_6

    .line 258
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 262
    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    if-eqz p1, :cond_8

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 264
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    .line 265
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect()V

    goto :goto_3

    .line 268
    :cond_7
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq p1, v3, :cond_8

    .line 269
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    :cond_8
    :goto_3
    return v3
.end method

.method public setMirror(Z)V
    .locals 1

    .line 451
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMirror="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceView"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 445
    iget-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v0, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_1
    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 1

    .line 536
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v0, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_1
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    return-void
.end method

.method public showFail()V
    .locals 0

    .line 491
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showStart()V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
