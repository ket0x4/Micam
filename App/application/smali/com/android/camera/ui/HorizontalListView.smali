.class public Lcom/android/camera/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mBlockNotification:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsScrollingPerformed:Z

.field private mItemWidth:I

.field private mLastSelectImageListItem:Landroid/view/View;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

.field private mPaddingWidth:I

.field private mPresetWidth:I

.field private mPreviousSelectViewIndex:I

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSelectCenter:Z

.field private mSelectViewIndex:I

.field private mTouchDown:Z

.field private mTouchMoveEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const p2, 0x7fffffff

    .line 33
    iput p2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 34
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 38
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 43
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/16 p2, 0xb4

    .line 44
    iput p2, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 45
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 46
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 48
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    .line 53
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    .line 126
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$1;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 545
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$4;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/HorizontalListView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/HorizontalListView;I)I
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/HorizontalListView;)Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    .line 230
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 231
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 232
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 231
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private cacheChildItem(Landroid/view/View;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fillList(I)V
    .locals 2

    .line 306
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 310
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListRight(II)V

    .line 313
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 317
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 5

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_1

    .line 380
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-ltz v0, :cond_1

    .line 381
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v4, :cond_0

    .line 384
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 385
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 387
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 389
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 390
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 391
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 392
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillListRight(II)V
    .locals 5

    :goto_0
    add-int v0, p1, p2

    .line 322
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 323
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 325
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v4, :cond_0

    .line 326
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 327
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 329
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    const/4 v1, -0x1

    .line 331
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 334
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    .line 335
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 338
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-gez v0, :cond_2

    .line 339
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 341
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getChildWidth()I
    .locals 0

    .line 542
    iget p0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return p0
.end method

.method private declared-synchronized initView()V
    .locals 4

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 82
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    .line 88
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 89
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const v1, 0x7fffffff

    .line 90
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 91
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v1, :cond_0

    .line 92
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 93
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 95
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 97
    :goto_0
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 98
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private justify()V
    .locals 4

    .line 202
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge v0, v3, :cond_1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-void

    .line 209
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x2

    .line 210
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 211
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-le v2, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 214
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    if-eq v0, v1, :cond_5

    .line 215
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->scrollTo(I)V

    goto :goto_2

    .line 218
    :cond_4
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 219
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_5
    :goto_2
    return-void
.end method

.method private loadItems()V
    .locals 2

    const/4 v0, 0x0

    .line 455
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureChildWidth()V
    .locals 7

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb4

    .line 350
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 351
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 355
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 356
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 357
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 356
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 358
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 359
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_2
    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return-void
.end method

.method private notifyItemSelect(Landroid/view/View;IJ)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 513
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 514
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v3, :cond_1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .line 515
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 517
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_2

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    .line 518
    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 521
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 522
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 524
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 525
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 528
    :cond_4
    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, p3}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p3

    if-ne p2, p3, :cond_6

    .line 529
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 530
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 532
    :cond_5
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 533
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method private positionItems(I)V
    .locals 10

    .line 431
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 432
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 433
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 434
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v0

    .line 435
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v1

    .line 436
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 437
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, p1

    move p1, v4

    .line 438
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 439
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v7, v3, v0

    .line 440
    invoke-virtual {v6, v3, v4, v7, v1}, Landroid/view/View;->layout(IIII)V

    .line 442
    iget-boolean v8, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v8, :cond_0

    if-ge v3, v2, :cond_0

    if-le v7, v2, :cond_0

    .line 444
    invoke-direct {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v3

    .line 445
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-direct {p0, v6, v3, v8, v9}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 p1, p1, 0x1

    move v3, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 5

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_0

    .line 400
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 401
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 402
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 404
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    sub-int/2addr v2, v0

    .line 407
    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterView;->removeViewsInLayout(II)V

    .line 410
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 412
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 414
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 415
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, -0x1

    .line 417
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-le v0, v2, :cond_3

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    .line 420
    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->removeViewsInLayout(II)V

    :cond_3
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 173
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 174
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toDataIndex(I)I
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method private toViewIndex(I)I
    .locals 1

    .line 373
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 468
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 471
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 472
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 480
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 481
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 482
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    .line 484
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_0

    .line 475
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    .line 476
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    :goto_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 506
    iget-boolean p0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p0
.end method

.method public isTouchMoveEnable()Z
    .locals 0

    .line 633
    iget-boolean p0, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    return p0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return p1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 494
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 494
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 239
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 240
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 245
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 246
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 247
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 248
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 249
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    .line 253
    :goto_0
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 254
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->getCurrX()I

    move-result p4

    .line 255
    iput p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 258
    :cond_2
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    if-gtz p4, :cond_3

    .line 259
    iput p3, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 260
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 262
    :cond_3
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-lt p4, p5, :cond_4

    .line 263
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 264
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 267
    :cond_4
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int/2addr p4, p5

    .line 268
    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iput p5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 269
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->removeNonVisibleItems(I)V

    .line 270
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->fillList(I)V

    .line 271
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->positionItems(I)V

    .line 273
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->isFinished()Z

    move-result p4

    if-eqz p4, :cond_8

    if-eqz p1, :cond_5

    goto :goto_1

    .line 281
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->loadItems()V

    .line 282
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    if-nez p1, :cond_9

    .line 283
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 284
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz p1, :cond_6

    .line 285
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$3;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 292
    :cond_6
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    if-eq p1, p3, :cond_9

    .line 293
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, p3, :cond_7

    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-gt p1, p3, :cond_7

    .line 294
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p1

    .line 295
    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    invoke-virtual {p0, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 296
    iget-object p3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p3

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 298
    :cond_7
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    goto :goto_2

    .line 274
    :cond_8
    :goto_1
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$2;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$2;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 461
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 463
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 165
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->measureChildWidth()V

    .line 166
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method public setItemWidth(I)V
    .locals 1

    .line 69
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 70
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz p1, :cond_0

    .line 71
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 72
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOnItemSingleTapDownListener(Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .line 179
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toViewIndex(I)I

    move-result p1

    .line 180
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 181
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 182
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 183
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 187
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, v0, :cond_2

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge p1, v1, :cond_2

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p1

    .line 191
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 194
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-nez p1, :cond_3

    .line 195
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_3
    return-void
.end method
