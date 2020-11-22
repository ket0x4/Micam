.class Lcom/android/camera/fragment/FragmentPanorama$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentPanorama;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 224
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0x9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 226
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 229
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 230
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method
