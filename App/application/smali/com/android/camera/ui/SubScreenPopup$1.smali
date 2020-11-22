.class Lcom/android/camera/ui/SubScreenPopup$1;
.super Ljava/lang/Object;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v0}, Lcom/android/camera/ui/SubScreenPopup;->access$200(Lcom/android/camera/ui/SubScreenPopup;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/ui/SubScreenPopup;->access$300(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    .line 50
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->access$400(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->access$500(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    .line 53
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {p0}, Lcom/android/camera/ui/SubScreenPopup;->access$600(Lcom/android/camera/ui/SubScreenPopup;)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
