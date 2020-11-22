.class public Lcom/android/camera/voiceassist/XiaoAiHelper;
.super Ljava/lang/Object;
.source "XiaoAiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaoAiHelper"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public static isActionFromXiaoAi(Landroid/app/Activity;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NONE"

    :goto_0
    const-string v0, "com.miui.voiceassist"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.voiceassistant"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/android/camera/voiceassist/XiaoAiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An illegal caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " use the XIAOAI_CONTROL intent!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public shouldCountDownFromAction()Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    const/4 v2, -0x1

    const-string v3, "android.intent.extras.COUNT_DOWN_TIME"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v3, "android.media.action.XIAOAI_CONTROL"

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.camera.action.XIAOAI_CONTROL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eq p0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
