.class Lcom/android/camera/ui/EffectPopup$1;
.super Ljava/lang/Object;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$000(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$000(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
