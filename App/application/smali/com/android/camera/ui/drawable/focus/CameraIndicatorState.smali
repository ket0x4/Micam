.class public Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;
.super Ljava/lang/Object;
.source "CameraIndicatorState.java"


# instance fields
.field public mAEAFHeadPosition:F

.field public mCenterFlag:I

.field public mCurrentAngle:F

.field public mCurrentMinusCircleCenter:I

.field public mCurrentMinusCircleRadius:F

.field public mCurrentRadius:I

.field public mCurrentRayBottom:I

.field public mCurrentRayHeight:I

.field public mCurrentRayWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V
    .locals 1

    .line 33
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 34
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    .line 36
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    .line 37
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    .line 38
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    .line 39
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    .line 41
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    .line 42
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    .line 43
    iget p1, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mAEAFHeadPosition:F

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mAEAFHeadPosition:F

    return-void
.end method
