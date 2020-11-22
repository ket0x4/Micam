.class Lcom/android/camera/ActivityBase$4;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "Time of starting gallery is too long, maybe it was killed at background."

    .line 759
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase;->access$302(Lcom/android/camera/ActivityBase;I)I

    .line 761
    iget-object p0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 762
    invoke-interface {p0, v0}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method
