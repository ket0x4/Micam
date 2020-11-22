.class Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;
.super Ljava/lang/Object;
.source "PanoMovingIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoMovingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChangeTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestTimes:I

.field private mMaxTimesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoMovingIndicatorView;Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestTimes:I

    .line 222
    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestState:Ljava/lang/Object;

    .line 223
    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    .line 224
    iput-object p3, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mMaxTimesMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public setCurrentState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    return-void
.end method
