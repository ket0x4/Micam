.class public Lcom/android/camera/ui/ExitButton;
.super Landroid/view/View;
.source "ExitButton.java"


# instance fields
.field private mExpand:Z

.field private mExpandLeft:I

.field private mExpandRight:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    .line 28
    iget-object p2, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 30
    iget-object p0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 43
    iget-boolean v0, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLeft(I)V

    .line 45
    iget v0, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 55
    iget-object v2, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-int v2, v2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez v4, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 62
    iget-boolean v5, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    if-eqz v5, :cond_2

    .line 63
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    mul-int/2addr v3, v1

    div-int/2addr v3, v2

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 88
    iget-object p1, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 92
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr p1, v0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    .line 102
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 103
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpandedAnimation(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    return-void
.end method

.method public setExpandingSize(II)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    .line 108
    iput p2, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    return-void
.end method
