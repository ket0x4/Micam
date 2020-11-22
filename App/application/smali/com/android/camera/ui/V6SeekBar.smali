.class public Lcom/android/camera/ui/V6SeekBar;
.super Landroid/widget/RelativeLayout;
.source "V6SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final PADDING:I


# instance fields
.field private mBar:Lcom/android/camera/ui/TwoStateBar;

.field private mBarHeight:I

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorHeight:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mEndPosition:I

.field private mGap:F

.field private mHeight:I

.field private mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

.field private mMaxValue:I

.field private mReLoad:Z

.field private mSmoothChange:Z

.field private mStartPosition:I

.field private mValue:I

.field private mValueChanged:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    .line 34
    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 36
    iput-boolean p2, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    .line 47
    new-instance v0, Lcom/android/camera/ui/TwoStateBar;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/TwoStateBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    .line 52
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    const v0, 0x7f0801d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    .line 56
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    .line 57
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    .line 58
    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    return-void
.end method

.method private clip(III)I
    .locals 0

    if-le p1, p2, :cond_0

    return p2

    :cond_0
    if-ge p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private mapPositionToValue(I)I
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    .line 210
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p0

    return p0

    .line 212
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p0

    return p0
.end method

.method private mapValueToPosition(I)I
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 218
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    int-to-float p1, p1

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    sub-int p1, v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p0

    return p0

    :cond_0
    int-to-float p1, p1

    .line 220
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p0

    return p0
.end method

.method private notifyChange(Z)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    if-eqz v0, :cond_0

    .line 164
    iget p0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;->onValueChanged(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v1, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    return v3

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v2, v0

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    int-to-float v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 133
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 134
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 135
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 139
    invoke-direct {p0, v3}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    .line 141
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v7, v2

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v0, v7

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 144
    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-gt v1, v4, :cond_4

    sub-int v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v2, v6

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-ge v4, v1, :cond_6

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_6

    :cond_5
    move p1, v0

    .line 150
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 153
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 154
    iget-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    if-eqz p1, :cond_7

    .line 155
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 156
    invoke-direct {p0, v3}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    :cond_7
    :goto_0
    return v5
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->setMaxValue(I)V

    .line 64
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 91
    iget-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz p1, :cond_0

    .line 92
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    .line 93
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 96
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz p1, :cond_2

    .line 97
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    :cond_2
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 101
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    .line 102
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 103
    iget-object p3, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget p4, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    add-int/2addr p2, p1

    invoke-virtual {p3, p5, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    .line 108
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 109
    iget-object p3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    iget p4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr v0, p4

    add-int/2addr p2, p1

    invoke-virtual {p3, p4, p1, v0, p2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 113
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget p3, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int p4, p2, p3

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    iget p0, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    sub-int/2addr p0, p5

    invoke-virtual {p1, p5, p4, p2, p0}, Lcom/android/camera/ui/TwoStateBar;->setStatePosition(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    .line 80
    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    .line 81
    sget p1, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    .line 82
    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    .line 83
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    .line 84
    iget p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 85
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 172
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 180
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    if-eq v0, p1, :cond_0

    .line 181
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 182
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    :cond_0
    return-void
.end method
