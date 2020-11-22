.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsScrollingPerformed:Z

.field private mJustifyEnabled:Z

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I

.field private mSelectionFromSelf:Z

.field private mTouchDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance p2, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance p2, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/HorizontalSlideView;)F
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method private calculateLength(II)F
    .locals 17

    move-object/from16 v0, p0

    .line 104
    iget v1, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 108
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 110
    iget-object v6, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v6}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v2, :cond_1

    move v7, v4

    goto :goto_1

    .line 111
    :cond_1
    iget-object v7, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v7}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    move v9, v3

    move v10, v9

    move v11, v10

    move v8, v4

    .line 113
    :goto_3
    iget-object v12, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v12}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v12

    if-ge v8, v12, :cond_a

    mul-int v12, v8, v2

    add-int/2addr v12, v6

    if-ne v12, v6, :cond_3

    move v13, v5

    goto :goto_4

    :cond_3
    move v13, v4

    :goto_4
    if-ne v12, v7, :cond_4

    move v14, v5

    goto :goto_5

    :cond_4
    move v14, v4

    .line 117
    :goto_5
    invoke-direct {v0, v12}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v15, v16

    if-eqz v13, :cond_5

    .line 120
    iget v11, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    sub-float v11, v11, v16

    :cond_5
    if-eqz v13, :cond_6

    move v13, v1

    goto :goto_6

    :cond_6
    add-float v13, v11, v16

    :goto_6
    if-eqz v14, :cond_7

    move v14, v3

    goto :goto_7

    .line 123
    :cond_7
    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v14

    add-float/2addr v14, v15

    :goto_7
    add-float/2addr v11, v14

    move/from16 v14, p1

    if-ne v12, v14, :cond_8

    move/from16 v15, p2

    move v9, v13

    goto :goto_8

    :cond_8
    move/from16 v15, p2

    if-ne v12, v15, :cond_9

    move v10, v13

    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move v3, v10

    goto :goto_9

    :cond_b
    move v9, v3

    :goto_9
    sub-float/2addr v3, v9

    .line 133
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private flingX(I)V
    .locals 10

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 242
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private getItemGap(I)F
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result p0

    return p0
.end method

.method private getItemWidth(I)F
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result p0

    return p0
.end method

.method private scroll(I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 248
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v1, v2, :cond_0

    :goto_0
    sub-int p1, v2, v0

    goto :goto_1

    :cond_0
    add-int v1, v0, p1

    .line 250
    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private select(I)V
    .locals 3

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 195
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 197
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz p1, :cond_1

    .line 198
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {p1, p0, v0}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    if-eqz p1, :cond_3

    .line 202
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :cond_2
    invoke-interface {p1, p0, v0}, Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;->onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V

    :cond_3
    return-void
.end method

.method private setPositionX(I)V
    .locals 1

    .line 231
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 232
    iget p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge p1, v0, :cond_0

    .line 233
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le p1, v0, :cond_1

    .line 235
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 71
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public isScrolling()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 273
    :cond_0
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    if-nez v2, :cond_1

    .line 274
    iput-boolean v3, v0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 277
    :cond_1
    iget v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    iget v4, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 285
    iget-object v6, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    const/4 v7, 0x0

    if-eqz v6, :cond_1a

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 287
    iget-object v9, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v9}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v8

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    if-eqz v6, :cond_3

    move v10, v3

    goto :goto_1

    .line 288
    :cond_3
    iget-object v10, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v10}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v8

    :goto_1
    if-eqz v6, :cond_4

    const/4 v6, -0x1

    goto :goto_2

    :cond_4
    move v6, v8

    :goto_2
    move v12, v2

    move v11, v3

    move v13, v7

    move v14, v13

    move/from16 v16, v14

    move v15, v8

    .line 290
    :goto_3
    iget-object v8, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    if-ge v11, v8, :cond_f

    mul-int v8, v11, v6

    add-int/2addr v8, v9

    if-ne v8, v9, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    move v12, v3

    :goto_4
    if-ne v8, v10, :cond_6

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    move/from16 v17, v3

    .line 294
    :goto_5
    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v18

    div-float v19, v18, v5

    if-eqz v12, :cond_7

    move v13, v7

    :cond_7
    if-eqz v17, :cond_8

    move/from16 v20, v7

    goto :goto_6

    .line 297
    :cond_8
    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v20

    div-float v20, v20, v5

    :goto_6
    if-eqz v12, :cond_9

    sub-float v14, v2, v19

    :cond_9
    if-eqz v12, :cond_a

    move v12, v2

    goto :goto_7

    :cond_a
    add-float v12, v14, v19

    :goto_7
    if-eqz v15, :cond_d

    .line 303
    iget v3, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    sub-float v3, v12, v3

    cmpg-float v21, v3, v7

    if-gtz v21, :cond_b

    neg-float v5, v3

    add-float v22, v19, v20

    cmpg-float v5, v5, v22

    if-lez v5, :cond_c

    :cond_b
    cmpl-float v5, v3, v7

    if-lez v5, :cond_d

    add-float v19, v19, v13

    cmpg-float v5, v3, v19

    if-gtz v5, :cond_d

    .line 306
    :cond_c
    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    move/from16 v16, v3

    const/4 v15, 0x0

    :cond_d
    if-eqz v17, :cond_e

    move v3, v7

    goto :goto_8

    .line 312
    :cond_e
    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v3

    add-float v3, v18, v3

    :goto_8
    add-float/2addr v14, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v20

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    :cond_f
    sub-float/2addr v12, v2

    float-to-int v3, v12

    .line 315
    iput v3, v0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v3, 0x0

    .line 317
    :goto_9
    iget-object v5, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v5}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_19

    mul-int v5, v3, v6

    add-int/2addr v5, v9

    if-ne v5, v9, :cond_10

    const/4 v8, 0x1

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    :goto_a
    if-ne v5, v10, :cond_11

    const/4 v11, 0x1

    goto :goto_b

    :cond_11
    const/4 v11, 0x0

    .line 321
    :goto_b
    invoke-direct {v0, v5}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v15, v12, v13

    if-eqz v8, :cond_12

    sub-float v14, v2, v15

    :cond_12
    if-eqz v8, :cond_13

    move v8, v2

    goto :goto_c

    :cond_13
    add-float v8, v14, v15

    :goto_c
    add-float v15, v14, v12

    cmpl-float v17, v15, v7

    if-ltz v17, :cond_17

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v14, v7

    if-gtz v7, :cond_17

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    iget-object v7, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v7, v5}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v7

    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v7, v13, :cond_14

    .line 330
    invoke-virtual {v1, v14, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_d

    .line 331
    :cond_14
    iget-object v7, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v7, v5}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v7

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v7, v13, :cond_15

    .line 332
    invoke-virtual {v1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_d

    .line 334
    :cond_15
    invoke-virtual {v1, v15, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    :goto_d
    iget-object v7, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    iget v8, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v8, v5, :cond_16

    const/4 v8, 0x1

    goto :goto_e

    :cond_16
    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v7, v5, v1, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    if-eqz v11, :cond_18

    const/4 v7, 0x0

    goto :goto_f

    .line 340
    :cond_18
    invoke-direct {v0, v5}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v5

    add-float v7, v12, v5

    :goto_f
    add-float/2addr v14, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_9

    :cond_19
    move/from16 v1, v16

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 344
    :goto_10
    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    .line 345
    iput-boolean v2, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    float-to-int v1, v1

    .line 346
    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    :cond_1b
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 210
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 218
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    :goto_0
    return v0
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .locals 3

    .line 137
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 139
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0

    .line 148
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setJustifyEnabled(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    return-void
.end method

.method public setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    return-void
.end method

.method public setSelection(F)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 185
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .line 155
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0

    .line 169
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 173
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
