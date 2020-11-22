.class public Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PortraitNewbieDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private adjustViewHeight(Landroid/view/View;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 73
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result p0

    sub-int/2addr v1, p0

    .line 74
    invoke-static {v1}, Lcom/android/camera/Util;->getDialogTopMargin(I)I

    move-result p0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v1, v0, :cond_0

    .line 77
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method private resumeMode()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 133
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 137
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 140
    :cond_3
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sSwitchModeTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-static {v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    .line 144
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 149
    new-instance v0, Lcom/android/camera/module/loader/FunctionDataSetup;

    invoke-direct {v0, v1}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    .line 150
    new-instance v2, Lcom/android/camera/module/loader/FunctionUISetup;

    invoke-direct {v2, v1}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(I)V

    .line 153
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/FunctionDataSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    .line 154
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/camera/module/loader/FunctionUISetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackEvent(I)Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;->resumeMode()V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;->resumeMode()V

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/Camera;->markPortraitNewBieDestroyed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900af

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;->onBackEvent(I)Z

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0011

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900af

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0900ae

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0f01d4

    .line 50
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0f01d3

    .line 52
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    const p2, 0x7f0900b0

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;->adjustViewHeight(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 99
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 100
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 180
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, p1, :cond_0

    const/4 p2, 0x5

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;->onBackEvent(I)Z

    return p1

    :cond_0
    const/16 p0, 0x19

    if-eq p2, p0, :cond_2

    const/16 p0, 0x18

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xab

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 92
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
