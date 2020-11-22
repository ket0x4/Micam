.class Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;
.super Ljava/lang/Object;
.source "MakeupParamsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    iget v1, v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    iput v1, v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLastSelectedParam:I

    .line 74
    iget-object v2, v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 75
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    iget p2, p1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-static {p1, p2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->access$000(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    iget p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLastSelectedParam:I

    iget p2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-static {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->access$100(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;II)V

    :cond_0
    return-void
.end method
