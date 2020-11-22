.class public Lcom/android/camera/ui/V6SeekbarPopupTexts;
.super Landroid/widget/RelativeLayout;
.source "V6SeekbarPopupTexts.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mGap:F

.field private mHeight:I

.field private mPadding:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070108

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070080

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    return-void
.end method

.method private addTextView(Ljava/lang/CharSequence;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->addTextView(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 68
    iget p1, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mWidth:I

    iget p2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mGap:F

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    :goto_0
    if-ge p4, p1, :cond_1

    .line 71
    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p3

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v1

    if-ne p3, v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, p4

    goto :goto_1

    :cond_0
    move v1, p4

    :goto_1
    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mGap:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 74
    iget v2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    add-int v3, v2, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mHeight:I

    invoke-virtual {p5, v3, p2, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mWidth:I

    .line 62
    iput p2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mHeight:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 3

    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const v2, -0x4c000001

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
