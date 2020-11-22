.class public abstract Lcom/android/camera/ui/drawable/CameraPaintBase;
.super Ljava/lang/Object;
.source "CameraPaintBase.java"


# static fields
.field public static ALPHA_HINT:I = 0x66

.field public static ALPHA_OPAQUE:I = 0xff

.field public static ALPHA_OUTSTANDING:I = 0xff


# instance fields
.field public isClockwise:Z

.field public isRecording:Z

.field public mBaseRadius:F

.field public mCurrentAlpha:I

.field public mCurrentColor:I

.field public mCurrentStrokeWidth:F

.field public mCurrentWidthPercent:F

.field private mDstAlpha:I

.field private mDstColor:I

.field private mDstStrokeWidth:F

.field private mDstWidthPercent:F

.field public mMiddleX:F

.field public mMiddleY:F

.field public mPaint:Landroid/graphics/Paint;

.field public mSrcAlpha:I

.field public mSrcColor:I

.field public mSrcStrokeWidth:F

.field public mSrcWidthPercent:F

.field public needZero:Z

.field public timeAngle:F

.field public visible:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->initPaint(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->isHide()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getVisible()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    return p0
.end method

.method protected abstract initPaint(Landroid/content/Context;)V
.end method

.method protected isHide()Z
    .locals 1

    .line 207
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetRecordingState()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    return-void
.end method

.method public reverseClock()V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v0, :cond_0

    .line 38
    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    goto :goto_0

    .line 40
    :cond_0
    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    :goto_0
    return-void
.end method

.method public setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 92
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object p0
.end method

.method public setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 86
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    return-object p0
.end method

.method public setMiddle(FFF)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    .line 75
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    .line 76
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    return-void
.end method

.method public setResult()V
    .locals 2

    .line 183
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 184
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 185
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 186
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    .line 193
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    .line 194
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    .line 195
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    return-void
.end method

.method public setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    .line 117
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    return-object p0
.end method

.method public setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    .line 111
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    return-object p0
.end method

.method public setTargetValues(FIIF)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    .line 141
    iput p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    .line 142
    iput p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    .line 143
    iput p4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    .line 145
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    .line 146
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    .line 147
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    .line 148
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    return-void
.end method

.method public setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 104
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    .line 105
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    return-object p0
.end method

.method public setVisible(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->visible:I

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    .line 153
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 154
    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 156
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstStrokeWidth:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcStrokeWidth:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 157
    iput v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 164
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcAlpha:I

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 171
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    :cond_2
    return-void
.end method
