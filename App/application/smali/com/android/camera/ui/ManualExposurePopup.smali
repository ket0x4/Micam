.class public Lcom/android/camera/ui/ManualExposurePopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualExposurePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManualExposurePopup"


# instance fields
.field private mCurrentIndex:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    return p0
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v2, :cond_0

    const v2, 0x1e8480

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes()I

    move-result v2

    .line 63
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMinExposureTimes()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 65
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 66
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v3, v6, :cond_1

    if-le v6, v2, :cond_2

    :cond_1
    if-nez v5, :cond_3

    .line 68
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0252

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    :cond_2
    aget-object v6, v0, v5

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    aget-object v6, v1, v5

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 98
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 40
    sget-boolean p1, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ManualExposurePopup;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    .line 44
    iget-object p3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Lcom/android/camera/preferences/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->filterValue()V

    .line 49
    new-instance p1, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualExposurePopup;)V

    .line 50
    iget-object p2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget p2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005a

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
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

    .line 121
    iget p1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 123
    iput p3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    .line 124
    iget-object p2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ManualExposurePopup;->notifyToDispatcher(ZZ)V

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    .line 88
    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualExposurePopup;->TAG:Ljava/lang/String;

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 116
    iget-object p0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
