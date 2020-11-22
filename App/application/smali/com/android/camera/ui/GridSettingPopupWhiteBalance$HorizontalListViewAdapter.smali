.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridSettingPopupWhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Lcom/android/camera/ui/NumericListAdapter;)V
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 189
    iput-object p2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 195
    array-length p0, v0

    return p0

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 211
    aget-object p0, v0, p1

    return-object p0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    if-eqz p0, :cond_1

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/NumericListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 223
    new-instance p2, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900e2

    .line 225
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    invoke-static {p2, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->access$202(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 227
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$300(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 228
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$400(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 229
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 234
    :goto_0
    invoke-static {p2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->access$200(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
