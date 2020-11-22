.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static sWhiteBalanceManual:Ljava/lang/String;

.field private static sWhiteBalanceMeasure:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mCurrentKValue:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mOnBackListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 133
    new-instance p1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 40
    sget-object p1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f038d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0f038e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/HorizontalListView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    return p0
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 163
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v5, "pref_qc_manual_whitebalance_k_value_key"

    .line 158
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 50
    new-instance p1, Lcom/android/camera/ui/NumericListAdapter;

    const/16 p2, 0x7d0

    const/16 p3, 0x1f40

    const/16 v0, 0x64

    invoke-direct {p1, p2, p3, v0}, Lcom/android/camera/ui/NumericListAdapter;-><init>(III)V

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    .line 51
    new-instance p1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;

    iget-object p2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-direct {p1, p0, p2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Lcom/android/camera/ui/NumericListAdapter;)V

    .line 52
    iget-object p2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const-string v0, "GridSettingPopupWhiteBa"

    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 62
    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 63
    :goto_0
    sget-object v1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 66
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current WB CCT = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Can\'t get current WB CCT"

    .line 75
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NumericListAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 85
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    goto :goto_2

    .line 86
    :cond_4
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 89
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    return-void

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_2
    if-eqz v2, :cond_6

    .line 98
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 100
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v4, :cond_6

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 101
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 105
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    move-object v9, p0

    .line 101
    invoke-interface/range {v4 .. v9}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005a

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 116
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    .line 117
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090031

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 147
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result p1

    .line 148
    iget p2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 149
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 150
    iget p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 151
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->notifyToDispatcher(ZZ)V

    .line 152
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->setEnabled(Z)V

    .line 169
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->show(Z)V

    .line 127
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 129
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_0
    return-void
.end method
