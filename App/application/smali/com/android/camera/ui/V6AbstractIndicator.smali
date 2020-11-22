.class public abstract Lcom/android/camera/ui/V6AbstractIndicator;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field public static final TEXT_COLOR_DEFAULT:I

.field public static final TEXT_COLOR_SELECTED:I


# instance fields
.field protected mContent:Landroid/widget/TextView;

.field protected mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field protected mImage:Lcom/android/camera/ui/TwoStateImageView;

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOrientation:I

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPopupRoot:Landroid/view/ViewGroup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060038

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    .line 23
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060039

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getShowedColor()I
    .locals 0

    .line 113
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    :goto_0
    return p0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .locals 0

    .line 51
    iput-object p6, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 53
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 54
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, 0x1

    const/16 p3, -0xa

    if-eq p3, p4, :cond_0

    .line 59
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move p4, p2

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p5, :cond_1

    .line 63
    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    move p2, p4

    .line 68
    :goto_1
    iget-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz p3, :cond_2

    iget-object p4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p4}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :cond_2
    iget-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p3}, Lcom/android/camera/preferences/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateImage()V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateContent()V

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method protected isIndicatorSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090064

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const v0, 0x7f0900e0

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090065

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    .line 151
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    :cond_0
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->dismissPopup()Z

    const/4 p0, 0x0

    return p0
.end method

.method public recoverIfNeeded()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->showPopup()V

    return-void
.end method

.method public reloadPreference()V
    .locals 0

    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 142
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 211
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3

    .line 184
    iput p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    neg-int p1, p1

    if-ltz p1, :cond_0

    .line 186
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 188
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRotation()F

    move-result v0

    float-to-int v0, v0

    .line 189
    rem-int/lit16 v1, v0, 0x168

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v1, v1, 0x168

    :goto_1
    sub-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void

    .line 195
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-le v1, v2, :cond_4

    if-ltz p1, :cond_3

    add-int/lit16 p1, p1, -0x168

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 203
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    add-int/2addr v0, p1

    int-to-float p2, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 205
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_3
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    return-void
.end method

.method public showPopup()V
    .locals 0

    return-void
.end method

.method protected updateContent()V
    .locals 0

    return-void
.end method

.method protected updateImage()V
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 91
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->isDefaultValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 92
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isIndicatorSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 94
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_"

    .line 90
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->isDefaultValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_4
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    instance-of v1, p0, Lcom/android/camera/ui/V6IndicatorButton;

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result v0

    .line 124
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
