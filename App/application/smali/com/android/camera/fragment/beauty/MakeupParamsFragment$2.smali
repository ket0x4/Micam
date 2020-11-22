.class Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MakeupParamsFragment.java"


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

.field final synthetic val$isRTL:Z

.field final synthetic val$margin:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;ZI)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    iput-boolean p2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$isRTL:Z

    iput p3, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 92
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 93
    iget-boolean p4, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$isRTL:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    .line 95
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 97
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 101
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 103
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_0
    return-void
.end method
