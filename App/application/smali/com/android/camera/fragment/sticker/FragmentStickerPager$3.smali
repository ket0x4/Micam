.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;
.super Ljava/lang/Object;
.source "FragmentStickerPager.java"

# interfaces
.implements Lcom/android/camera/network/resource/OnDownloadListener;


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

    .line 176
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(JI)V
    .locals 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentStickerPager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v2}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$200(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v2}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$200(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/sticker/StickerInfo;

    iget-wide v2, v2, Lcom/android/camera/network/resource/Resource;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v2}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$200(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/sticker/StickerInfo;

    iput p3, v2, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    .line 188
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v2}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$600(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
