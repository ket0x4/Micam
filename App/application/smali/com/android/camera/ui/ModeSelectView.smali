.class public Lcom/android/camera/ui/ModeSelectView;
.super Landroid/widget/LinearLayout;
.source "ModeSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
    }
.end annotation


# instance fields
.field private lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

.field private onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    return-void
.end method

.method private scrollTo(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p3, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 p0, 0x12c

    invoke-virtual {p3, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method private setSelection(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 114
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0040

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v2, 0x80

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 119
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getTotalWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v0}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    neg-int v2, v2

    .line 141
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->scrollTo(ILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V
    .locals 5

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b001a

    .line 73
    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorActivateTextView;

    .line 75
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, -0x66000001

    .line 76
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 78
    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0xff5701

    .line 84
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 88
    iget v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa8

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa9

    if-ne p2, v0, :cond_2

    :cond_1
    const/16 p2, 0xa2

    :cond_2
    move v0, v2

    .line 98
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_3

    const/4 p1, 0x0

    .line 100
    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public judgePosition(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xa8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_3

    :cond_2
    const/16 p1, 0xa2

    :cond_3
    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 189
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorActivateTextView;

    .line 192
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 164
    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    if-eqz p0, :cond_1

    .line 165
    invoke-interface {p0, p1}, Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;->onModeClicked(I)V

    :cond_1
    return-void
.end method

.method public setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    return-void
.end method
