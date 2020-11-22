.class Lcom/android/camera/fragment/FragmentBeauty$3;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrePosition:I

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->mPrePosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->mPrePosition:I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 p0, 0x3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xfc

    .line 203
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    move v1, p1

    move p1, p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x5

    const/16 v1, 0xff2

    .line 210
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb9

    .line 211
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;

    if-eqz v2, :cond_4

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 213
    :goto_2
    invoke-interface {v2, v0}, Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;->onFaceBeautySwitched(Z)V

    .line 217
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const v0, 0x7f090020

    .line 222
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 223
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_6
    return-void
.end method
