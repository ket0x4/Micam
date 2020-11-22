.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .line 130
    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .line 131
    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v2, v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I

    return-void
.end method
