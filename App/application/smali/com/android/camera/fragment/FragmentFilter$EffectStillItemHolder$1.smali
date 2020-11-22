.class Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;
.super Ljava/lang/Object;
.source "FragmentFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;->this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;->this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;->this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
