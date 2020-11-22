.class public Lcom/android/camera/ui/OrientationIndicator;
.super Landroid/view/View;
.source "OrientationIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I


# instance fields
.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    .line 17
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 18
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sput v1, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    .line 19
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getIndicatorPath()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    .line 46
    sget v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 47
    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 49
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v5, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v5, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sget v5, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object p0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/OrientationIndicator;->getIndicatorPath()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 64
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
