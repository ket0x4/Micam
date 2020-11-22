.class public Lcom/android/camera/lib/compatibility/related/v26/V26Utils;
.super Ljava/lang/Object;
.source "V26Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public static addChannelForNotificationBuilder(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Notification$Builder;)V
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 29
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p2, -0x1

    .line 33
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 36
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 4

    const/16 v0, 0x3200

    const/16 v1, 0xa00

    const/4 v2, 0x1

    const/16 v3, 0x33

    .line 19
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    return-void
.end method

.method public static getTransientExtras(Landroid/app/job/JobParameters;)Landroid/os/Bundle;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static setTransientExtras(Landroid/app/job/JobInfo$Builder;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    return-void
.end method
