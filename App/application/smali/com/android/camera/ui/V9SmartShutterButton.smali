.class public Lcom/android/camera/ui/V9SmartShutterButton;
.super Landroid/widget/ImageView;
.source "V9SmartShutterButton.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;
    }
.end annotation


# static fields
.field private static final DISMISS_DISTANCE_THRESHOLD:I

.field private static final FADEOUT_BOUNDS_THRESHOLD:I

.field private static final MOVE_THRESHOLD:I

.field private static UNUSED_TRIGGER_TIME:I

.field private static sDeviceScreenInches:D


# instance fields
.field private mEnableClick:Z

.field private mFadeout:Landroid/view/animation/Animation;

.field private mFixedShutterCenterX:I

.field private mFixedShutterCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mMoveBounds:Landroid/graphics/Rect;

.field private mOriginX:I

.field private mOriginY:I

.field private mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

.field private mState:I

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 46
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 47
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    const/16 v0, 0x3a98

    .line 48
    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    const/high16 v0, 0x428c0000    # 70.0f

    .line 49
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    .line 54
    new-instance p2, Lcom/android/camera/ui/V9SmartShutterButton$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/V9SmartShutterButton$1;-><init>(Lcom/android/camera/ui/V9SmartShutterButton;)V

    iput-object p2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    sub-int/2addr v0, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    invoke-direct {p1, v0, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/V9SmartShutterButton;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V9SmartShutterButton;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    return-void
.end method

.method private getDistanceFromPoint(IIII)I
    .locals 0

    sub-int/2addr p3, p1

    .line 166
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr p4, p2

    .line 167
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/2addr p0, p0

    mul-int/2addr p1, p1

    add-int/2addr p0, p1

    int-to-double p0, p0

    .line 168
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private nearCenterOfShutter(II)Z
    .locals 2

    .line 172
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 173
    iget p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    sub-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 174
    sget p2, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt p1, p2, :cond_0

    if-gt p0, p2, :cond_0

    mul-int/2addr p1, p1

    mul-int/2addr p0, p0

    add-int/2addr p1, p0

    int-to-double p0, p1

    .line 175
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sget p2, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    int-to-double v0, p2

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needMovableShutter()Z
    .locals 4

    .line 275
    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getScreenInches(Landroid/content/Context;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    .line 279
    :cond_0
    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide v2, 0x401399999999999aL    # 4.9

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onClick()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterClick()V

    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0, p1}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterFocus(Z)V

    :cond_0
    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    .line 255
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 257
    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 259
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 260
    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    if-le p0, p1, :cond_2

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 262
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 264
    :cond_2
    :goto_0
    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    if-ge p0, p1, :cond_3

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 266
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iput p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 267
    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-le p0, p1, :cond_4

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 269
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    return-object v0
.end method

.method private setDisplayPosition(II)V
    .locals 0

    int-to-float p1, p1

    .line 249
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    int-to-float p1, p2

    .line 250
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    .line 243
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateVisibleState()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 200
    invoke-direct {p0, v3}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 194
    invoke-direct {p0, v3}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v0, v3, :cond_2

    .line 122
    sget v0, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    iget v6, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    invoke-direct {p0, v2, p1, v5, v6}, Lcom/android/camera/ui/V9SmartShutterButton;->getDistanceFromPoint(IIII)I

    move-result v5

    if-gt v0, v5, :cond_9

    .line 123
    iput v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 131
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/V9SmartShutterButton;->nearCenterOfShutter(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iput v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    const p1, 0x3f19999a    # 0.6f

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 134
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    .line 135
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    invoke-direct {p1, v0, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 143
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-ne v0, v3, :cond_5

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 146
    :cond_5
    iput v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    .line 149
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    goto :goto_1

    .line 105
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    int-to-float v0, v2

    int-to-float v4, p1

    .line 107
    invoke-static {v0, v4, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    .line 108
    iget-boolean v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    if-eqz v0, :cond_7

    .line 109
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v0, v3, :cond_7

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSmartShutterPosition(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->onClick()V

    .line 115
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    goto :goto_1

    .line 153
    :cond_8
    iput v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    .line 154
    iput p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    .line 155
    iput v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 156
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 157
    invoke-direct {p0, v3}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    .line 158
    iget-object p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    :goto_1
    return v3
.end method

.method public flyin(IIII)V
    .locals 3

    .line 207
    iput p3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    .line 208
    iput p4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    .line 209
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->needMovableShutter()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    const v1, 0x3c23d70a    # 0.01f

    .line 212
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    invoke-direct {p0, p3, p4}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    .line 215
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSmartShutterPosition()Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    if-eqz p3, :cond_1

    const/16 v1, 0x78

    .line 219
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, p4, :cond_1

    .line 221
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 222
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, p4

    move v2, p3

    :goto_0
    if-ne v2, p4, :cond_2

    if-ne p3, p4, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    move p1, v2

    .line 230
    :goto_1
    iget-object p3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 234
    iput v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    .line 235
    iget-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public isEnableClick()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 284
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    .line 286
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    const/4 v0, 0x2

    .line 287
    iput v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    return-void
.end method

.method public setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    return-void
.end method
