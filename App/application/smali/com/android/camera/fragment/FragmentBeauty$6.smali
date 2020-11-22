.class Lcom/android/camera/fragment/FragmentBeauty$6;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->hideAdvance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$6;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$6;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/BeautyTitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$6;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/BeautyTitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView;->shrinkImmediately()V

    .line 408
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$6;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/BeautyTitleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
