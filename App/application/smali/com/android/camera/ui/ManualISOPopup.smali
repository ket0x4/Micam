.class public Lcom/android/camera/ui/ManualISOPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualISOPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManualISOPopup"


# instance fields
.field private mCurrentIndex:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    return p0
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 78
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 40
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->filterValue()V

    .line 49
    new-instance p1, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualISOPopup;)V

    .line 50
    iget-object p2, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object p1, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget p2, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005a

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

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

    .line 93
    iget p1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 95
    iput p3, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    .line 96
    iget-object p2, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ManualISOPopup;->notifyToDispatcher(ZZ)V

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    .line 68
    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualISOPopup;->TAG:Ljava/lang/String;

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
