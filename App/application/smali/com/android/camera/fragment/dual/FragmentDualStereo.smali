.class public Lcom/android/camera/fragment/dual/FragmentDualStereo;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDualStereo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$DualController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff5

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideSlideView()V
    .locals 0

    return-void
.end method

.method public hideZoomButton()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public isZoomVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showZoomButton()V
    .locals 0

    return-void
.end method

.method public updateZoomValue()V
    .locals 0

    return-void
.end method

.method public visibleHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
