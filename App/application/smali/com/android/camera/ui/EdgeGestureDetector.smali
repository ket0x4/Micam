.class public Lcom/android/camera/ui/EdgeGestureDetector;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;,
        Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TAP_TO_TOUCH_TIME:I

.field private final TOUCH_SLOP_SQUARE:I

.field private mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4285570a    # 66.67f

    .line 17
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    mul-int/2addr v1, v0

    const-string v0, "edgetouch_slop_quare"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TOUCH_SLOP_SQUARE:I

    const-string v0, "tap_timeout"

    const/16 v1, 0x190

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TIMEOUT:I

    const-string v0, "tap_to_touch_min_time"

    const/16 v1, 0x64

    .line 19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TO_TOUCH_TIME:I

    .line 24
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mPrintCoords:Z

    .line 26
    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    invoke-direct {v0}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mText:Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

    return-void
.end method
