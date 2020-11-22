.class public Lcom/android/camera/FocusManagerSimple;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManagerSimple.java"


# direct methods
.method public constructor <init>(IIZI)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 12
    iput p4, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    .line 13
    iput-boolean p3, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public canAutoFocus()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRecord()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerSimple;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public cancelAutoFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 116
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return-void
.end method

.method public focusPoint()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return-void
.end method

.method public getDefaultFocusAreaHeight()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    return p0
.end method

.method public getDefaultFocusAreaWidth()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    return p0
.end method

.method public getFocusArea(IIII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 45
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 46
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    const/4 v1, 0x0

    .line 50
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v8, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    .line 49
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-object v9

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeteringsArea(IIII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 66
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 67
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x3fe66666    # 1.8f

    .line 70
    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    const/4 v1, 0x0

    .line 71
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v8, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    .line 70
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-object v9

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFocusing()Z
    .locals 2

    .line 103
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 1

    .line 107
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInValidFocus()Z
    .locals 1

    .line 37
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNeedCancelAutoFocus()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p0
.end method

.method public onAutoFocus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 85
    :goto_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return-void
.end method

.method public onDeviceKeepMoving()V
    .locals 2

    .line 79
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    :cond_1
    return-void
.end method

.method public resetFocused()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 21
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    .line 22
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method
