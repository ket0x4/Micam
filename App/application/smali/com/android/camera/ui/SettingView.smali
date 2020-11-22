.class public abstract Lcom/android/camera/ui/SettingView;
.super Landroid/widget/RelativeLayout;
.source "SettingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ui/V6AbstractIndicator;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOrientation:I

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/ui/MessageDispatcher;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            ")V"
        }
    .end annotation
.end method

.method public reloadPreferences()V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->reloadPreference()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setPressed(Ljava/lang/String;Z)V
    .locals 2

    .line 42
    iget-object p0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setPressed(Z)V

    :cond_1
    return-void
.end method
