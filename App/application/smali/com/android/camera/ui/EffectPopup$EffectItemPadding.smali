.class public Lcom/android/camera/ui/EffectPopup$EffectItemPadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemPadding"
.end annotation


# instance fields
.field protected mPadding:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 1

    .line 298
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 299
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 304
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 306
    iget p2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    invoke-virtual {p1, p2, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
