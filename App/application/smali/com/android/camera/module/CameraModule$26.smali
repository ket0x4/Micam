.class Lcom/android/camera/module/CameraModule$26;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->stopScreenLight()V
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

    .line 7853
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$26;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 7856
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$26;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$9500(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method
