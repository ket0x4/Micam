.class Lcom/android/camera/ActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 133
    iget-object p0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 151
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exception = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityBase"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0f0078

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const v0, 0x7f0f0077

    .line 158
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;II)V

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto/16 :goto_3

    .line 168
    :pswitch_2
    invoke-static {p0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0087

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const v0, 0x7f0f0086

    goto :goto_0

    :cond_3
    const v0, 0x7f0f0085

    .line 167
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;II)V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto/16 :goto_3

    .line 217
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater;->updatePreviewThumbnailUri(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 209
    :cond_5
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0f045b

    .line 210
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const p1, 0x7f0f045a

    .line 212
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 214
    :goto_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 189
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mimeType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/16 v2, 0x100

    if-eq v0, v2, :cond_9

    const/16 p1, 0x101

    if-eq v0, p1, :cond_8

    goto :goto_3

    .line 200
    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 193
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "addToSecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 194
    invoke-static {p0, v1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p1, :cond_10

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 178
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/Thumbnail;

    .line 179
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_b

    move v2, v1

    goto :goto_2

    :cond_b
    move v2, v3

    .line 180
    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_c

    move v3, v1

    .line 181
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/Module;->enableFakeThumbnail()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz v3, :cond_d

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 185
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto :goto_3

    .line 146
    :cond_e
    invoke-static {p0, v1}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_3

    .line 139
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_10

    .line 140
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :cond_10
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xe2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
