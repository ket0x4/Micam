.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "CameraBrightness"

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ""

    .line 158
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 163
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execCommand lcd value="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cost="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "execCommand IOException"

    .line 177
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "execCommand InterruptedException"

    .line 174
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-object v2
.end method

.method private getCurrentBackLight()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "0"

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CameraBrightness"

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    .line 111
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "cat sys/class/leds/lcd-backlight/brightness"

    .line 114
    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_0

    :cond_3
    const-wide/16 v2, 0x12c

    .line 117
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentBackLight currentSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 126
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string v3, "config_backlightBits"

    invoke-static {v1, v3}, Lcom/android/camera/CameraBrightness;->access$700(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    .line 129
    iget-object p0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string v1, "config_backlightBit"

    invoke-static {p0, v1}, Lcom/android/camera/CameraBrightness;->access$800(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    .line 131
    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    const/16 v0, 0x8

    if-le v1, v0, :cond_7

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    shl-int v2, v0, v1

    if-ge p0, v2, :cond_6

    move p0, v0

    goto :goto_3

    :cond_6
    shr-int/2addr p0, v1

    .line 139
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentBackLight convert to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    if-lez v1, :cond_8

    :goto_4
    return p0

    :cond_8
    return v2
.end method

.method private updateBrightness(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 95
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBrightness setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " useDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v2}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraBrightness"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    iget-object p0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {p0, p1}, Lcom/android/camera/CameraBrightness;->access$602(Lcom/android/camera/CameraBrightness;I)I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground useDefaultValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " paused="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {p1}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {p1}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 44
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result p1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current back light -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v2}, Lcom/android/camera/CameraBrightness;->access$200(Lcom/android/camera/CameraBrightness;)V

    .line 51
    iget-object p0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {p0}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 52
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p0, v2

    .line 55
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$400()Landroid/util/Spline;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$400()Landroid/util/Spline;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    .line 61
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v2, 0x1

    if-gt p0, v2, :cond_2

    const-string p0, "doInBackground brightness unchanged"

    .line 62
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 67
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$500()Landroid/util/Spline;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 68
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$500()Landroid/util/Spline;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    float-to-int p1, p0

    :cond_3
    const p0, 0x3dcccccd    # 0.1f

    const/16 v0, 0xb9

    const/4 v1, 0x0

    .line 73
    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x43390000    # 185.0f

    div-float/2addr v0, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    add-float/2addr v0, p0

    int-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, v0

    add-double/2addr v4, v2

    mul-double/2addr p0, v4

    double-to-int p0, p0

    const/16 p1, 0xff

    .line 75
    invoke-static {p0, v1, p1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, -0x1

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
