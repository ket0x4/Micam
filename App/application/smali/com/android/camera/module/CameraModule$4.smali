.class Lcom/android/camera/module/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/module/CameraModule$AEStableAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->waitAEToCapture()V
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

    .line 2208
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAEStable()V
    .locals 2

    .line 2211
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onAEStable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$7300(Lcom/android/camera/module/CameraModule;)Z

    .line 2213
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/module/CameraModule;->access$7402(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AEStableAction;)Lcom/android/camera/module/CameraModule$AEStableAction;

    return-void
.end method
