.class Lcom/android/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->showNewBie(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1429
    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1432
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/dialog/AiSceneNewbieDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/AiSceneNewbieDialogFragment;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f100005

    .line 1433
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 1434
    iget-object v1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1435
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "AiSceneHint"

    .line 1436
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1437
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1438
    iget-object p0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0, v2}, Lcom/android/camera/Camera;->access$1102(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 1439
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/4 v0, 0x0

    const-string v1, "pref_camera_first_ai_scene_use_hint_shown_key"

    .line 1440
    invoke-interface {p0, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1441
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method
