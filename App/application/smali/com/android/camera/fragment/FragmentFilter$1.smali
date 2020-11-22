.class Lcom/android/camera/fragment/FragmentFilter$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFilter;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$1;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 109
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 111
    invoke-static {}, Lcom/android/camera/fragment/FragmentFilter;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception in LinearLayoutManager.onFocusSearchFailed"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
