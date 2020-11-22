.class public Lcom/android/camera/ui/CameraSnapView;
.super Landroid/view/View;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSnapView$SnapListener;
    }
.end annotation


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field private height:I

.field private mCurrentMode:I

.field private mExtraBitmap:Landroid/graphics/Bitmap;

.field private mExtraBitmapMatrix:Landroid/graphics/Matrix;

.field private mExtraBitmapPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mMissTaken:Z

.field private mOutTime:J

.field private mPointerId:I

.field private mPressDownTime:J

.field private mPressUpTime:J

.field private mShutterRect:Landroid/graphics/Rect;

.field private mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 59
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    const/high16 p1, 0x43c80000    # 400.0f

    .line 60
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 59
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    const/high16 p1, 0x43c80000    # 400.0f

    .line 60
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    const-wide/16 p1, -0x1

    .line 62
    iput-wide p1, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 59
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    const/high16 p1, 0x43c80000    # 400.0f

    .line 60
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    const-wide/16 p1, -0x1

    .line 62
    iput-wide p1, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-object p0
.end method

.method private checkGesture(II)V
    .locals 5

    .line 446
    iget-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    .line 449
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    .line 452
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture d2(d*d)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSnapView"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    .line 458
    iget v2, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    div-int v1, v0, v1

    if-le v2, v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    if-ge v1, v0, :cond_3

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 460
    invoke-interface {v0, v1, p1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_3
    return-void
.end method

.method private inRegion(II)Z
    .locals 1

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 398
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 399
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 186
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float v1, v0, v2

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v2, p1

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 201
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    .line 202
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    .line 206
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public hideRoundPaintItem()V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideRoundPaintItem()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 428
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 435
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 415
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 160
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    .line 153
    iget p1, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 155
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz p1, :cond_1

    .line 156
    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 290
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v4, 0xa8

    const/16 v5, 0xac

    const/16 v6, 0xa6

    const/16 v7, 0xa2

    const/16 v8, 0xa1

    const/4 v9, 0x2

    const-wide/16 v11, 0x320

    const/4 v13, 0x1

    if-eqz v2, :cond_a

    const/4 v14, 0x0

    const/4 v10, 0x3

    if-eq v2, v13, :cond_4

    if-eq v2, v9, :cond_2

    if-eq v2, v10, :cond_4

    const/4 v9, 0x6

    if-eq v2, v9, :cond_5

    :cond_1
    :goto_0
    move v0, v13

    goto/16 :goto_4

    .line 331
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_3

    .line 332
    iput-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    goto :goto_0

    .line 333
    :cond_3
    iget-wide v4, v0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    goto :goto_0

    .line 340
    :cond_4
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 343
    iget-wide v13, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    iget-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v13, v2

    cmp-long v2, v13, v11

    if-gez v2, :cond_5

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    .line 352
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 353
    iget-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    iget-wide v13, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v2, v13

    cmp-long v9, v2, v11

    if-lez v9, :cond_7

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    invoke-direct {p0, v9, v11}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 356
    iget-object v9, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 358
    :cond_6
    iget-object v9, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_1
    const-wide/16 v9, 0x78

    cmp-long v11, v2, v9

    if-lez v11, :cond_8

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_8
    sub-long v2, v9, v2

    .line 364
    :goto_2
    iget v9, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-eq v9, v8, :cond_9

    if-eq v9, v7, :cond_9

    if-eq v9, v6, :cond_9

    if-eq v9, v5, :cond_9

    if-eq v9, v4, :cond_9

    const/16 v4, 0xa9

    if-eq v9, v4, :cond_9

    .line 377
    iget-object v4, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    .line 380
    :cond_9
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v2, v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/ui/CameraSnapView;->checkGesture(II)V

    goto :goto_3

    .line 294
    :cond_a
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    const/4 v3, 0x0

    if-eq v2, v8, :cond_d

    if-eq v2, v7, :cond_d

    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_d

    if-eq v2, v4, :cond_d

    const/16 v4, 0xa9

    if-eq v2, v4, :cond_d

    .line 307
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v2

    if-nez v2, :cond_c

    .line 308
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    .line 309
    iput-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 310
    iget-wide v1, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_b

    .line 311
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    sub-long/2addr v4, v6

    invoke-interface {v1, v4, v5}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapMissTaken(J)V

    :cond_b
    return v3

    .line 316
    :cond_c
    iget-object v4, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation()V

    .line 319
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/CameraSnapView;->mPointerId:I

    .line 320
    iput-boolean v3, v0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 321
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    .line 323
    iget-wide v3, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_e

    .line 324
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    iget-wide v5, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v5, v3

    invoke-interface {v1, v5, v6}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapTaken(J)V

    .line 326
    :cond_e
    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0
.end method

.method public pauseRecording()V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->pauseRecording()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 392
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0
.end method

.method public prepareRecording()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget p0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(I)V

    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resumeRecording()V

    return-void
.end method

.method public setCurrentMode(IZ)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 214
    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 215
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_0

    .line 222
    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    .line 223
    iget-object p2, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initMode(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initTargetValues(I)V

    .line 228
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initMode(I)V

    :goto_0
    return-void
.end method

.method public setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showRoundPaintItem()V

    return-void
.end method

.method public startRing()V
    .locals 2

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRingAnimation()V

    return-void
.end method

.method public stopRing()V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 410
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRingAnimation()V

    return-void
.end method

.method public triggerAnimation(IZ)V
    .locals 2

    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p0, "CameraSnapView"

    const-string p1, "Warning: trigger animation in worker thread. Do nothing"

    .line 237
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xa1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xac

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    .line 255
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz p0, :cond_3

    .line 256
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(ZI)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz p0, :cond_3

    .line 249
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(ZI)V

    :cond_3
    :goto_0
    return-void
.end method
