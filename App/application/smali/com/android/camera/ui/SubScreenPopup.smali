.class public Lcom/android/camera/ui/SubScreenPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "SubScreenPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SubScreenPopup$AnimationType;,
        Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field private mPopupTranslationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimation:Landroid/animation/ValueAnimator;

.field private mSettingView:Lcom/android/camera/ui/SettingView;

.field private mSubPopupParent:Landroid/widget/FrameLayout;

.field private mTranslationAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mValueBottomLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/camera/ui/SubScreenPopup$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/SubScreenPopup$1;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    .line 63
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/SubScreenPopup;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->computeTransY()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/SubScreenPopup;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->removeOnPreDrawListener()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    return-object p0
.end method

.method private addOnPreDrawListener()Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private computeTransY()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method private getItemKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez p0, :cond_3

    .line 103
    sget-boolean p0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "pref_skin_beautify_enlarge_eye_key"

    .line 104
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p0, "pref_skin_beautify_slim_face_key"

    .line 106
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_2

    const-string p0, "pref_skin_beautify_skin_color_key"

    .line 109
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p0, "pref_skin_beautify_skin_smooth_key"

    .line 111
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p0, "pref_camera_whitebalance_key"

    .line 114
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "pref_focus_position_key"

    .line 116
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "pref_qc_camera_exposuretime_key"

    .line 117
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p0, "pref_qc_camera_iso_key"

    .line 119
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "pref_camera_zoom_mode_key"

    .line 121
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private removeOnPreDrawListener()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const-string v1, " -> anim="

    const-string v2, "V6ManualPopup"

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 249
    instance-of v4, v3, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    if-eqz v4, :cond_0

    .line 250
    check-cast v3, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    invoke-virtual {v3, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 253
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setupAnimation: reuse transY="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v0

    goto :goto_1

    .line 255
    :cond_2
    new-instance v0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    .line 256
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, p2, v4

    int-to-float v3, p1

    const/4 v5, 0x1

    aput v3, p2, v5

    const-string v3, "translationY"

    .line 257
    invoke-static {v3, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 258
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v5, v4

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 259
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setupAnimation: new transY="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p2
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 198
    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 199
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    .line 276
    sget-object p0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne p2, p0, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 164
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "V6ManualPopup"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 169
    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 170
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v1, p1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object p1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 178
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v1, p1, :cond_3

    .line 182
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 7

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 85
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->getItemKeys()Ljava/util/List;

    move-result-object v2

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v5, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f090079

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    const v0, 0x7f0900d2

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    const v0, 0x7f0900d0

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingView;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 139
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    return-void
.end method

.method public showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showChildPopup: transY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",popup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "V6ManualPopup"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 153
    sget-object p1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 154
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 157
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackground()V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method
