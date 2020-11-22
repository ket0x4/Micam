.class Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 181
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 182
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 183
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 184
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 205
    iget v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 213
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_3

    .line 214
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    return-void

    .line 217
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_4

    .line 218
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void

    .line 221
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v1, v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    if-gez v1, :cond_7

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    cmpg-float p1, v0, v2

    if-ltz p1, :cond_6

    .line 222
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    .line 223
    :cond_6
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    .line 224
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    goto :goto_1

    :cond_7
    cmpl-float p1, v3, v2

    if-eqz p1, :cond_a

    cmpl-float p1, v2, v3

    if-lez p1, :cond_8

    cmpg-float p1, v0, v2

    if-ltz p1, :cond_9

    .line 229
    :cond_8
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    .line 230
    :cond_9
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    .line 231
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 232
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 237
    :cond_a
    :goto_1
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method public getFlingDirection(F)I
    .locals 5

    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 257
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-gez v0, :cond_1

    .line 258
    iget p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget p0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 260
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v3, v0, p1

    const/4 v4, 0x3

    if-gez v3, :cond_3

    .line 261
    iget-object p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    if-ge p1, p0, :cond_2

    return v4

    :cond_2
    return v2

    :cond_3
    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    .line 267
    iget-object p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    if-le p1, p0, :cond_4

    return v4

    :cond_4
    return v1

    :cond_5
    return v4

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method public getXVelocity(III)F
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 253
    iget-object p0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 248
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    .line 249
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    return-void
.end method
