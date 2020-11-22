.class Lcom/android/camera/fragment/FragmentBottomAction$1;
.super Landroid/os/Handler;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomAction;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomAction;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 133
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    .line 139
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$200(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$200(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$300(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$400(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
