.class public abstract Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/BaseSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseSelectHolder"
.end annotation


# instance fields
.field protected mIVSelected:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09006c

    .line 107
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f09006e

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->mIVSelected:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract bindView(I)V
.end method
