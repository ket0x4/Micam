.class public abstract Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EffectItemHolder"
.end annotation


# instance fields
.field protected mEffectIndex:I

.field protected mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 481
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09003f

    .line 482
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    .line 483
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 1

    .line 497
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    .line 499
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object p1, p1, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    aget-object p1, p1, v0

    .line 500
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 488
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 489
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
