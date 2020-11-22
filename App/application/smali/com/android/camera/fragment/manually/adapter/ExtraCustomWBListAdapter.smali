.class public Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtraCustomWBListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

.field private mOnCreated:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/ComponentManuallyWB;Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    .line 36
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    .line 37
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    return-void
.end method

.method private changeValue(I)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getShotValueCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    mul-int/lit16 p1, p1, 0xc8

    add-int/lit16 p1, p1, 0x7d0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x1f4

    add-int/lit16 p1, p1, 0x1770

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->setCustomWB(I)V

    .line 126
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v1, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getShotValueCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getLongValueCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getLongValueCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getShotValueCount()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getValuePosition()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB()I

    move-result v0

    const/16 v1, 0x1770

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x7d0

    .line 135
    div-int/lit16 v0, v0, 0xc8

    return v0

    :cond_0
    sub-int/2addr v0, v1

    .line 137
    div-int/lit16 v0, v0, 0x1f4

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getShotValueCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0017

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance p3, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;-><init>(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$1;)V

    const v0, 0x7f090049

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    invoke-static {p3, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->access$102(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorImageView;)Lcom/android/camera/ui/ColorImageView;

    const v0, 0x7f09004a

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {p3, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->access$202(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    .line 72
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const v1, -0x4c000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 73
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const v1, -0xff5701

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->getShotValueCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    mul-int/lit16 p1, p1, 0xc8

    add-int/lit16 p1, p1, 0x7d0

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    sub-int/2addr p1, p0

    mul-int/lit16 p1, p1, 0x1f4

    add-int/lit16 p1, p1, 0x1770

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    :goto_1
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 96
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 102
    check-cast p1, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->changeValue(I)V

    return-void
.end method

.method public onSingleTapDown(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 112
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->changeValue(I)V

    return-void
.end method
