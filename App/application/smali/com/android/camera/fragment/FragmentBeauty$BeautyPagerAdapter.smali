.class Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautyPagerAdapter"
.end annotation


# instance fields
.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTab;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTab;",
            ">;)V"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    .line 443
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 444
    iput-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;->mTabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;->mTabs:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;->mTabs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->fragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method
