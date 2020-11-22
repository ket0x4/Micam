.class public Lcom/android/camera/AssistantCamera;
.super Landroid/app/Activity;
.source "AssistantCamera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.camera.FROM_VOICE_ROOT"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "com.android.camera.ASSISTANT_HASH"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-static {}, Lcom/android/camera/KeyKeeper;->getInstance()Lcom/android/camera/KeyKeeper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/KeyKeeper;->setAssistantHash(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/AssistantCamera;->startCamera(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startCamera(Landroid/content/Intent;)V
    .locals 1

    .line 38
    const-class v0, Lcom/android/camera/Camera;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
