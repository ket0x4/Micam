.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mAxisCurrentDegree:I

.field private mClockwise:Z

.field private mEnableAnimation:Z

.field private mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

.field private mOverturn:Z

.field private mPointCurrentDegree:I

.field private mPointStartDegree:I

.field private mPointTargetDegree:I

.field private mSwitchEnd:Ljava/lang/Runnable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 47
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 48
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 50
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 53
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 54
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 57
    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 238
    new-instance p1, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 47
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 48
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 50
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 53
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 54
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 57
    iput-wide p1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 238
    new-instance p1, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 128
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 133
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 134
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    if-eqz v4, :cond_c

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 138
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    const/16 v6, 0xb4

    if-eqz v3, :cond_3

    .line 139
    iget v3, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    if-ne v3, v6, :cond_2

    const/4 v3, 0x0

    .line 140
    iput-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 141
    iput v3, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 142
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    if-eqz v3, :cond_7

    .line 143
    invoke-interface {v3}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotateAxisFinished()V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0xa

    .line 146
    iput v3, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 147
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 150
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iget v7, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    if-eq v3, v7, :cond_7

    .line 151
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 152
    iget-wide v9, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    .line 153
    iget-wide v9, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v7, v9

    long-to-int v3, v7

    .line 154
    iget v7, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 155
    iget-boolean v8, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    neg-int v3, v3

    :goto_0
    mul-int/lit16 v3, v3, 0x10e

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v7, v3

    if-ltz v7, :cond_5

    .line 156
    rem-int/lit16 v7, v7, 0x168

    goto :goto_1

    :cond_5
    rem-int/lit16 v7, v7, 0x168

    add-int/lit16 v7, v7, 0x168

    .line 157
    :goto_1
    iput v7, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 158
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 160
    :cond_6
    iget v3, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput v3, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 161
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    if-eqz v3, :cond_7

    .line 162
    invoke-interface {v3}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotatePointFinished()V

    .line 168
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    .line 169
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    .line 170
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    .line 171
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    .line 172
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v8

    .line 173
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 177
    iget v11, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    if-eqz v11, :cond_9

    if-ne v11, v6, :cond_8

    goto :goto_3

    .line 180
    :cond_8
    iget v6, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_4

    .line 178
    :cond_9
    :goto_3
    iget v6, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 182
    :goto_4
    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    shr-int/lit8 v2, v4, 0x1

    neg-int v6, v2

    int-to-float v6, v6

    shr-int/lit8 v11, v5, 0x1

    neg-int v12, v11

    int-to-float v12, v12

    .line 184
    invoke-virtual {v1, v6, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float v2, v2

    int-to-float v6, v11

    .line 185
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 186
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 188
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_b

    if-lt v10, v4, :cond_a

    if-ge v8, v5, :cond_b

    :cond_a
    int-to-float v1, v10

    int-to-float v2, v4

    div-float v2, v1, v2

    int-to-float v6, v8

    int-to-float v11, v5

    div-float v11, v6, v11

    .line 190
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v1, v11

    div-float/2addr v6, v11

    .line 191
    invoke-virtual {p1, v2, v2, v1, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 193
    :cond_b
    div-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    int-to-float v1, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v2, v7

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget p0, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v4

    .line 195
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    :goto_5
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 99
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    .line 101
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 102
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    .line 104
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 105
    iget-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz p1, :cond_5

    .line 106
    iget p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 107
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 109
    iget p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iget p2, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 116
    :goto_2
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 117
    iget-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 118
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    goto :goto_3

    .line 120
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 123
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
