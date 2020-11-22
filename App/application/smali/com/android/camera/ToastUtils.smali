.class public Lcom/android/camera/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static oldMsg:Ljava/lang/String;

.field private static oneTime:J

.field protected static toast:Landroid/widget/Toast;

.field private static twoTime:J


# direct methods
.method public static showToast(Landroid/content/Context;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_2

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    .line 33
    sget-object p0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/android/camera/ToastUtils;->oneTime:J
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 36
    invoke-virtual {p0}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ToastUtils;->twoTime:J

    .line 43
    sget-object p0, Lcom/android/camera/ToastUtils;->oldMsg:Ljava/lang/String;

    if-ne p1, p0, :cond_1

    .line 44
    sget-wide p0, Lcom/android/camera/ToastUtils;->twoTime:J

    sget-wide v0, Lcom/android/camera/ToastUtils;->oneTime:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    .line 45
    sget-object p0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 48
    :cond_1
    sput-object p1, Lcom/android/camera/ToastUtils;->oldMsg:Ljava/lang/String;

    .line 49
    sget-object p0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object p0, Lcom/android/camera/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_2
    :goto_0
    sget-wide p0, Lcom/android/camera/ToastUtils;->twoTime:J

    sput-wide p0, Lcom/android/camera/ToastUtils;->oneTime:J

    return-void
.end method
