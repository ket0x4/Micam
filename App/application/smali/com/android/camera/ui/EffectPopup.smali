.class public Lcom/android/camera/ui/EffectPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;,
        Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;,
        Lcom/android/camera/ui/EffectPopup$EffectDivider;,
        Lcom/android/camera/ui/EffectPopup$EffectItemPadding;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field private mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

.field private mEffectItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/EffectPopup$EffectItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolderHeight:I

.field private mHolderWidth:I

.field protected mIgnoreSameItemClick:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

.field private mTextView:Landroid/widget/TextView;

.field private mTextureHeight:I

.field private mTextureOffsetX:I

.field private mTextureOffsetY:I

.field private mTextureWidth:I

.field private mToastAnim:Landroid/view/animation/Animation;

.field private mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTotalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "EffectPopup"

    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup;->TAG:Ljava/lang/String;

    .line 67
    new-instance p1, Lcom/android/camera/ui/EffectPopup$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/EffectPopup$1;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    const/4 p1, -0x1

    .line 91
    iput p1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/EffectPopup;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/EffectPopup;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 5

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    .line 104
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    aget-object v3, p2, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    const-class p2, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "mRecycler"

    const-class v2, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {p2, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object p2

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    invoke-virtual {p2, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "EffectPopup"

    const-string v2, "no mRecycler field "

    .line 115
    invoke-static {v1, v2, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070055

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07004f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    const p2, 0x7f010009

    .line 121
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    .line 122
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    .line 124
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 125
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 126
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/EffectController;->getEffectCount(I)I

    move-result p2

    .line 126
    invoke-virtual {p1, v0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 128
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 130
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectDivider;

    sget p3, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    invoke-direct {p2, p0, p3}, Lcom/android/camera/ui/EffectPopup$EffectDivider;-><init>(Lcom/android/camera/ui/EffectPopup;I)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 131
    new-instance p1, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    .line 132
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 133
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    return-void
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 192
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 196
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    .line 192
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 165
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    if-eqz v0, :cond_1

    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 168
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 169
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    .line 170
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, p1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 174
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "pref_camera_scenemode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_1

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_audio_focus_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 177
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camcorder_mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 182
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 184
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa6

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 185
    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible(I)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->notifyToDispatcher(Z)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f090041

    .line 212
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f090044

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 145
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 147
    invoke-static {}, Lcom/android/camera/Device;->isNeedForceRecycleEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 150
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->setItemInCenter(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget p0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    goto :goto_0

    :cond_1
    const-string v0, "EffectPopup"

    const-string v1, "Invalid preference value."

    .line 153
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 230
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setItemInCenter(I)V
    .locals 2

    .line 138
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 139
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 203
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 204
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "auto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 205
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_0
    return-void
.end method

.method public startEffectRender()V
    .locals 6

    .line 248
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 250
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    .line 252
    iput v2, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    .line 253
    iput v2, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    .line 254
    iget v2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    iput v2, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 255
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    iput v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    mul-int v4, v0, v2

    mul-int v5, v1, v3

    if-le v4, v5, :cond_0

    mul-int/2addr v2, v0

    .line 261
    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    .line 262
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    sub-int/2addr v0, v3

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    goto :goto_0

    :cond_0
    mul-int/2addr v3, v1

    .line 266
    div-int/2addr v3, v0

    iput v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 267
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 271
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->start()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public stopEffectRender()V
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 277
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 285
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 290
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 291
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    goto :goto_1

    :cond_1
    return-void
.end method
