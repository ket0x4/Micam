.class Lcom/android/camera/ActivityBase$2;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$NailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V
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

    .line 510
    iput-object p1, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isKeptBitmapTexture()Z
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isKeptBitmapTexture()Z

    move-result p0

    return p0
.end method

.method public onFrameAvailable(I)V
    .locals 5

    const-string v0, "ActivityBase"

    const-string v1, "onFrameAvailable first frame arrived."

    .line 523
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/ActivityBase;->access$100(Lcom/android/camera/ActivityBase;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v3}, Lcom/android/camera/ActivityBase;->access$100(Lcom/android/camera/ActivityBase;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 527
    iget-object v3, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v3, v1, v2}, Lcom/android/camera/ActivityBase;->access$200(Lcom/android/camera/ActivityBase;J)V

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrameAvailable: trackStartAppCost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->resetStartTime()V

    .line 531
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraEnd()V

    .line 532
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchModeEnd()V

    .line 533
    iget-object p0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->notifyOnFirstFrameArrived(I)V

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/module/Module;->onPreviewPixelsRead([BII)V

    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0, p1}, Lcom/android/camera/module/Module;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    return-void
.end method
