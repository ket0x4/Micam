.class public abstract Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mCameraDisplayOrientation:I

.field protected mIsBigEnoughRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mOrientation:I

.field protected mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public isFaceStable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedExposure()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
