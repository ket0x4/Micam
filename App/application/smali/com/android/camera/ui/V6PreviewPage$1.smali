.class Lcom/android/camera/ui/V6PreviewPage$1;
.super Ljava/lang/Object;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p3, p2, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eq p1, p3, :cond_2

    invoke-static {p2}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p3, p2, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eq p1, p3, :cond_2

    .line 70
    invoke-static {p2}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p3, p2, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-ne p1, p3, :cond_3

    .line 73
    invoke-static {p2}, Lcom/android/camera/ui/V6PreviewPage;->access$300(Lcom/android/camera/ui/V6PreviewPage;)V

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {p1}, Lcom/android/camera/ui/V6PreviewPage;->access$200(Lcom/android/camera/ui/V6PreviewPage;)V

    .line 75
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-void
.end method
