.class public Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "GridSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 102
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    iget-object p3, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    instance-of p3, p2, Lcom/android/camera/ui/Rotatable;

    if-eqz p3, :cond_0

    .line 111
    move-object p3, p2

    check-cast p3, Lcom/android/camera/ui/Rotatable;

    const/4 v0, 0x0

    invoke-interface {p3, v0, v0}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    return-object p2
.end method
