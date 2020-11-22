.class Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 517
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 518
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->access$000(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->access$100(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 522
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->access$100(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 524
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 527
    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xc1
        0xc2
    .end array-data
.end method
