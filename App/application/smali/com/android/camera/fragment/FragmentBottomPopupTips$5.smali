.class Lcom/android/camera/fragment/FragmentBottomPopupTips$5;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;->showQrCodeTip()V
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

    .line 508
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method
