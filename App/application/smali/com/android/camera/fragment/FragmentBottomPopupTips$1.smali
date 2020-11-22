.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1;
.super Landroid/os/Handler;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 118
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips$1;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 138
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method
