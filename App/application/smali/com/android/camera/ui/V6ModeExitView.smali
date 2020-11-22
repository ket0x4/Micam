.class public Lcom/android/camera/ui/V6ModeExitView;
.super Landroid/widget/LinearLayout;
.source "V6ModeExitView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    const/16 v0, 0x8

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isCurrentExitView(Ljava/lang/String;)Z
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V6ModeExitView isCurrent key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExitButtonShown()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090026

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ExitButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    new-instance v1, Lcom/android/camera/ui/V6ModeExitView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ModeExitView$1;-><init>(Lcom/android/camera/ui/V6ModeExitView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V6ModeExitView setOnClickListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SETTING_"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    .line 98
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExitButtonVisible(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-static {p0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setExitContent(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateExitButton(IZ)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V6ModeExitView updateExitButton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SETTING_"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 86
    iget-object p1, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p1}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    return-void
.end method
