.class Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/storage/ImageSaverStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaverStatusListenerImpl"
.end annotation


# instance fields
.field final mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->mUpdateThumbnailLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public notifySaveFailure()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object p0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNewUriArrived(Landroid/net/Uri;IZ)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 218
    iput v2, v1, Landroid/os/Message;->what:I

    .line 219
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "uri"

    .line 220
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "mimeType"

    .line 221
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "addToSecure"

    .line 222
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 224
    iget-object p0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updatePreviewThumbnailUri(Landroid/net/Uri;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 247
    iput v2, v1, Landroid/os/Message;->what:I

    .line 248
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object p0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;ZZ)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 233
    iput v2, v1, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 235
    :goto_0
    iput p2, v1, Landroid/os/Message;->arg1:I

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 236
    :goto_1
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 237
    iget-object p0, p0, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
