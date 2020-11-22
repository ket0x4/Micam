.class Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManualExposurePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualExposurePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/ManualExposurePopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ManualExposurePopup;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

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

    .line 154
    new-instance p2, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;Lcom/android/camera/ui/ManualExposurePopup$1;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900e2

    .line 156
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    invoke-static {p2, v0}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->access$102(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-static {v1}, Lcom/android/camera/ui/ManualExposurePopup;->access$200(Lcom/android/camera/ui/ManualExposurePopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-static {v1}, Lcom/android/camera/ui/ManualExposurePopup;->access$300(Lcom/android/camera/ui/ManualExposurePopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 160
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 165
    :goto_0
    invoke-static {p2}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->access$100(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
