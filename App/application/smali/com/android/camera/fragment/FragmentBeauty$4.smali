.class Lcom/android/camera/fragment/FragmentBeauty$4;
.super Lcom/android/camera/ui/BeautyTitleView$Adapter;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$000(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$000(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    .line 242
    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->access$100(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget v2, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->access$102(Lcom/android/camera/fragment/FragmentBeauty$SubTab;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$000(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->access$100(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public needShowRedDot(I)Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$000(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeauty3DMakeUpClicked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
