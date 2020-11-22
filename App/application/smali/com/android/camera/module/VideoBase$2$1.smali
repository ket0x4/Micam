.class Lcom/android/camera/module/VideoBase$2$1;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoBase$2;->onDeviceKeepMoving(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/VideoBase$2;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoBase$2;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$2$1;->this$1:Lcom/android/camera/module/VideoBase$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1413
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$2$1;->this$1:Lcom/android/camera/module/VideoBase$2;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    return-void
.end method
