.class Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;
.super Ljava/lang/Object;
.source "RemodelingParamsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iput p3, p1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    .line 156
    iget p2, p1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-static {p1, p2}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->access$000(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;I)V

    .line 157
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->access$100(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method
