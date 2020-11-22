.class public Lcom/android/camera/ui/BeautyTitleView;
.super Landroid/widget/LinearLayout;
.source "BeautyTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;,
        Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;,
        Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;,
        Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;,
        Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;,
        Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;,
        Lcom/android/camera/ui/BeautyTitleView$Adapter;
    }
.end annotation


# instance fields
.field private mActiveIdx:I

.field private mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

.field private mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

.field private mExpand:Z

.field private mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 310
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 296
    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {v0}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {v0}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 301
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    .line 303
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 p1, -0x1

    .line 305
    iput p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    .line 307
    iput-boolean v1, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 296
    new-instance p2, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {p2}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {p2}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 301
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    .line 303
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {p1, p2}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 p1, -0x1

    .line 305
    iput p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    .line 307
    iput-boolean v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 296
    new-instance p2, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {p2}, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;-><init>()V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;

    invoke-direct {p2}, Lcom/android/camera/ui/BeautyTitleView$CommonChildAnimationsProvider;-><init>()V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    .line 301
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    .line 303
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    invoke-direct {p1, p2}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    const/4 p1, -0x1

    .line 305
    iput p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    .line 307
    iput-boolean p3, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BeautyTitleView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->updateData()V

    return-void
.end method

.method private getChildExpandAnimations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 454
    invoke-interface {v3, p0}, Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;->expandAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildShrinkAnimations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAnimationsProviders:[Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 464
    invoke-interface {v3, p0}, Lcom/android/camera/ui/BeautyTitleView$ChildAnimationsProvider;->shrinkAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static triggerAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 448
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateActiveState()V
    .locals 5

    .line 361
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 363
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 365
    iget v4, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateData()V
    .locals 6

    .line 332
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getText(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b005d

    .line 337
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 338
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 340
    iget-object v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v3, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->needShowRedDot(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 343
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 344
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v4, 0x0

    .line 345
    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 347
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    return-void
.end method


# virtual methods
.method public expand()V
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildExpandAnimations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    invoke-static {v0}, Lcom/android/camera/ui/BeautyTitleView;->triggerAnimators(Ljava/util/List;)V

    .line 442
    iput-boolean v1, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    :cond_2
    return-void
.end method

.method public notifyDataChange()V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    if-eqz p0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "BeautyTitleView"

    const-string p1, "onClick the view is null"

    .line 373
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 378
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 379
    iget-object p0, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;->onTitleClick(I)V

    :cond_1
    return-void
.end method

.method public setActiveIdx(I)V
    .locals 1

    .line 354
    iget v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    if-eq v0, p1, :cond_0

    .line 355
    iput p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mActiveIdx:I

    .line 356
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->updateActiveState()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/BeautyTitleView$Adapter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 322
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$EmptyAdapter;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    .line 323
    iget-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->setView(Lcom/android/camera/ui/BeautyTitleView;)V

    .line 324
    iget-object p0, p0, Lcom/android/camera/ui/BeautyTitleView;->mAdapter:Lcom/android/camera/ui/BeautyTitleView$Adapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;->notifyDataChanged()V

    return-void
.end method

.method public setTitleClickListener(Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 328
    new-instance p1, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/ui/BeautyTitleView$DefaultListenerOn;-><init>(Lcom/android/camera/ui/BeautyTitleView$1;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView;->mListener:Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;

    return-void
.end method

.method public shrink()V
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView;->getChildShrinkAnimations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    invoke-static {v0}, Lcom/android/camera/ui/BeautyTitleView;->triggerAnimators(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    :cond_2
    return-void
.end method

.method public shrinkImmediately()V
    .locals 6

    .line 384
    iget-boolean v0, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 395
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 397
    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_0
    if-ge v1, v0, :cond_2

    .line 400
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 402
    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    const/4 v4, 0x0

    .line 403
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x4

    .line 404
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/ui/BeautyTitleView;->mExpand:Z

    return-void
.end method
