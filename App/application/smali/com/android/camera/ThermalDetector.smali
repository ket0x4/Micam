.class public Lcom/android/camera/ThermalDetector;
.super Landroid/content/BroadcastReceiver;
.source "ThermalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThermalDetector$InstanceHolder;
    }
.end annotation


# static fields
.field public static ACTION_TEMP_CHANGED:Ljava/lang/String; = "action_temp_state_change"

.field public static EXTRA_TEMP_STAGE:Ljava/lang/String; = "temp_state"

.field private static final TAG:Ljava/lang/String; = "ThermalDetector"

.field public static TEMP_STAGE_NODE:Ljava/lang/String; = "/sys/class/thermal/thermal_message/temp_state"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private volatile mNodeValue:I

.field private volatile mTempStage:I

.field private mThermalConstrained:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/camera/ThermalDetector;->mNodeValue:I

    .line 33
    iput v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/ThermalDetector;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/android/camera/ThermalDetector;->mNodeValue:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/camera/ThermalDetector;->readNode()I

    move-result v0

    return v0
.end method

.method public static instance()Lcom/android/camera/ThermalDetector;
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/camera/ThermalDetector$InstanceHolder;->access$000()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    return-object v0
.end method

.method private onThermalNotification(I)V
    .locals 4

    .line 143
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 145
    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 155
    :goto_0
    sget-object v1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera busy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 160
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onThermalNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 164
    sget-object p1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v0, "notifyEvent crash"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private static readNode()I
    .locals 8

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ""

    const/4 v3, 0x0

    .line 84
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/ThermalDetector;->TEMP_STAGE_NODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exit value = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 89
    :cond_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 90
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 94
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    sget-object v4, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNode cat temp stage value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v4, "readNode IOException"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 100
    sget-object v1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v4, "readNode InterruptedException"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 107
    :goto_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_3

    :cond_3
    return v3

    :catch_2
    move-exception v0

    .line 116
    sget-object v1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v2, "failed to readNode "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public static thermalConstrained(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/camera/ThermalDetector$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ThermalDetector$1;-><init>(Lcom/android/camera/ThermalDetector;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/android/camera/ThermalDetector;->ACTION_TEMP_CHANGED:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 130
    :cond_1
    sget-object p1, Lcom/android/camera/ThermalDetector;->EXTRA_TEMP_STAGE:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    .line 131
    iget p1, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 132
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThermalDetector;->mThermalConstrained:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThermalDetector;->mThermalConstrained:Ljava/lang/Boolean;

    .line 138
    :goto_0
    iget p1, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    invoke-direct {p0, p1}, Lcom/android/camera/ThermalDetector;->onThermalNotification(I)V

    return-void
.end method

.method public onThermalNotification()V
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    invoke-direct {p0, v0}, Lcom/android/camera/ThermalDetector;->onThermalNotification(I)V

    return-void
.end method

.method public startMonitor()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/camera/ThermalDetector;->ACTION_TEMP_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    .line 58
    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    sget-object p0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v0, "startMonitor registerReceiver"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v1, "stopMonitor unregisterReceiver"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method

.method public thermalConstrained()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mThermalConstrained:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 76
    :cond_0
    iget p0, p0, Lcom/android/camera/ThermalDetector;->mNodeValue:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
