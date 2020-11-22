.class Lcom/android/camera/animation/AnimationComposite$1;
.super Ljava/lang/Object;
.source "AnimationComposite.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/AnimationComposite;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/animation/AnimationComposite;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/AnimationComposite;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite$1;->this$0:Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite$1;->this$0:Lcom/android/camera/animation/AnimationComposite;

    invoke-static {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->access$002(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;

    return-void
.end method
