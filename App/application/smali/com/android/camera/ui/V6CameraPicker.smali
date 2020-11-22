.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/AnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "V6CameraPicker"


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 31
    new-instance p1, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const p2, 0x7f120006

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object p1

    check-cast p1, Lcom/android/camera/preferences/ListPreference;

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 33
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 102
    iget-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    sget-object p1, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    const-string v0, "click switch camera button"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 107
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 108
    iput p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 109
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x0

    const v3, 0x7f0900fc

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 115
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iget v5, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 111
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 117
    iput v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
