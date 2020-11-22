.class Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;
.super Ljava/lang/Object;
.source "BeautyLevelFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautyLevelFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

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

    .line 78
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->setBeautyLevel(I)V

    return-void
.end method
