.class public Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "MakeupParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyLayoutManager"
.end annotation


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->isScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 261
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-void
.end method
