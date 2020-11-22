.class public Lcom/android/camera/ui/TwoStateBar;
.super Landroid/view/View;
.source "TwoStateBar.java"


# instance fields
.field private mFutureEnd:I

.field private mFutureStart:I

.field private mPastEnd:I

.field private mPastStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 35
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 36
    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    iget v1, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    if-ge v0, v1, :cond_0

    const v0, -0xff5701

    .line 37
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    iget v1, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    if-ge v0, v1, :cond_1

    const v0, -0x66000001

    .line 41
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v4, p0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setStatePosition(IIII)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
