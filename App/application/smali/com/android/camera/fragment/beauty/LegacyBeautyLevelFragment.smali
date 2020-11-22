.class public Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;
.super Lcom/android/camera/fragment/beauty/BeautyLevelFragment;
.source "LegacyBeautyLevelFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected beautyLevelToPosition(II)I
    .locals 0

    const/4 p0, 0x0

    .line 53
    invoke-static {p1, p0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method protected initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f08005d

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080057

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080058

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080059

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;)V

    return-object v0
.end method

.method protected provideItemHorizontalMargin()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
