.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;
.super Ljava/lang/Object;
.source "FragmentStickerPager.java"

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/FragmentStickerPager;->loadData()V
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

    .line 130
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 133
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v1, p1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$400(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/util/List;)V

    .line 135
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$500(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/util/List;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "getStickerList %d "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentStickerPager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    const/4 p3, 0x0

    invoke-static {p0, p3}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->access$500(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/util/List;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 142
    iget p1, p1, Lcom/android/camera/network/net/base/ErrorCode;->CODE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "errorCode %d msg:%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentStickerPager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
