.class public Lcom/android/camera/ui/ModeButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "ModeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_camera_mode_settings_key"

    .line 63
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x0

    const v3, 0x7f090089

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
