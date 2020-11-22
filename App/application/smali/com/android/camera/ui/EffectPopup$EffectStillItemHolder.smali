.class public Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;
.super Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectStillItemHolder"
.end annotation


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    const p1, 0x7f09003d

    .line 524
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 1

    .line 529
    invoke-super {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object v0, v0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
