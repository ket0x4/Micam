.class public Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "LegacyMakeupParamsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I
    .locals 2

    .line 69
    sget-object p0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$2;->$SwitchMap$com$android$camera$effect$BeautyParameters$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method protected initItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f080185

    const v2, 0x7f0f00ea

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f08018c

    const v2, 0x7f0f00f2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f08018e

    const v2, 0x7f0f00f1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 37
    new-instance v0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;)V

    return-object v0
.end method

.method protected provideItemHorizontalMargin()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
