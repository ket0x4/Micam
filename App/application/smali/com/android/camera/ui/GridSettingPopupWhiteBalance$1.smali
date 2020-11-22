.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;
.super Ljava/lang/Object;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/HorizontalListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-virtual {p1}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    .line 138
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/HorizontalListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 139
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_0
    return-void
.end method
