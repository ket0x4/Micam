.class Lcom/android/camera/module/CameraModule$23;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->consumeAiSceneResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 7649
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 1

    .line 7652
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7656
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    iget p2, p1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0x18

    invoke-static {p1, p2, v0}, Lcom/android/camera/module/CameraModule;->access$9000(Lcom/android/camera/module/CameraModule;II)V

    .line 7657
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1, v0}, Lcom/android/camera/module/CameraModule;->access$9100(Lcom/android/camera/module/CameraModule;I)V

    .line 7658
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    const-string p1, "off"

    invoke-static {p0, p1}, Lcom/android/camera/module/CameraModule;->access$9200(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)V

    goto :goto_0

    .line 7661
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$23;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$9300(Lcom/android/camera/module/CameraModule;)V

    :cond_2
    :goto_0
    return-void
.end method
