.class Lcom/android/camera/fragment/FragmentFilter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lcom/android/camera/fragment/FragmentFilter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$2;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 126
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$2;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->access$102(Lcom/android/camera/fragment/FragmentFilter;Z)Z

    return-void
.end method
