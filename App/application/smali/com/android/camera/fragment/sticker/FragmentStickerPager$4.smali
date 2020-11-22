.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;
.super Landroid/os/Handler;
.source "FragmentStickerPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/FragmentStickerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$000(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/fragment/sticker/StickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$000(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/fragment/sticker/StickerAdapter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const-string v0, "FragmentStickerPager"

    const-string v1, "MSG_NOTIFY_ITEM"

    .line 200
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
