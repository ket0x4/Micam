.class Lcom/android/camera/module/CameraModule$25;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->startScreenLight(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;I)V
    .locals 0

    .line 7833
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$25;->this$0:Lcom/android/camera/module/CameraModule;

    iput p2, p0, Lcom/android/camera/module/CameraModule$25;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7836
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$25;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/module/CameraModule$25;->val$brightness:I

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->setWindowBrightness(I)V

    return-void
.end method
