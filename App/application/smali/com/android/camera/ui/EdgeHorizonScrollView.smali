.class public Lcom/android/camera/ui/EdgeHorizonScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "EdgeHorizonScrollView.java"


# instance fields
.field private mDownX:F

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mEdgeWidth:I

.field private mIsRTL:Z

.field private mScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 35
    iput p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 35
    iput p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 35
    iput p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v10

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v4, v1

    int-to-float v11, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 77
    invoke-super/range {p0 .. p4}, Landroid/widget/HorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    .line 78
    iget-boolean v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mIsRTL:Z

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    invoke-virtual {v8, v1, v13}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    div-float/2addr v11, v2

    sub-int/2addr v10, v9

    int-to-float v3, v10

    div-float v9, v3, v2

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    const/high16 v2, 0x42b40000    # 90.0f

    .line 89
    invoke-virtual {v8, v2, v14, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 90
    invoke-virtual {v8, v13, v9}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v15, v13, v9

    const/4 v3, 0x0

    add-float v16, v1, v9

    .line 91
    iget v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 98
    invoke-virtual {v8, v1, v14, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    invoke-virtual {v8, v13, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 100
    iget v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v4, v1

    iget-object v5, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v12
.end method

.method public initView()V
    .locals 10

    .line 55
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mIsRTL:Z

    .line 58
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v5, v1

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/high16 v3, -0x40800000    # -1.0f

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_4

    goto :goto_1

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    sub-float/2addr p1, v0

    .line 123
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb3

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    .line 124
    iget-boolean v3, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    if-nez v3, :cond_3

    const/high16 v3, 0x41880000    # 17.0f

    .line 125
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 126
    invoke-interface {v0, v5, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->selectMode(II)V

    .line 127
    iput-boolean v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    const/4 p1, 0x5

    .line 129
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->selectMode(II)V

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    :cond_3
    :goto_0
    return v2

    .line 136
    :cond_4
    iput v3, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    :goto_1
    return v1

    .line 114
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 115
    iput-boolean v1, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    return v2
.end method
