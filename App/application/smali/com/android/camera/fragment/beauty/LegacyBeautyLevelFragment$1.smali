.class Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment$1;
.super Ljava/lang/Object;
.source "LegacyBeautyLevelFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;

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

    .line 39
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->setBeautyLevel(I)V

    return-void
.end method
