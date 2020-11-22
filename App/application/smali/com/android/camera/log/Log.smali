.class public Lcom/android/camera/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final MAX_TAG_LEN:I = 0x13

.field private static sDebugPriority:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    :try_start_0
    invoke-static {}, Lcom/android/camera/log/Log;->getOverrideLevel()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sput v0, Lcom/android/camera/log/Log;->sDebugPriority:I

    goto :goto_1

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    sput v0, Lcom/android/camera/log/Log;->sDebugPriority:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTINUAL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CAM_CONTINUAL_"

    const/4 v1, 0x2

    .line 113
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->shouldLogForDebug(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 136
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 137
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 144
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 145
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 192
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 193
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 200
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 201
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getOverrideLevel()I
    .locals 2

    .line 209
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const-string v1, "camera.debug.log_level"

    .line 210
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 152
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 153
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 160
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 161
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .line 214
    sget v0, Lcom/android/camera/log/Log;->sDebugPriority:I

    if-le v0, p1, :cond_1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->shouldLog(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldLog(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "CAM_"

    .line 222
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldLogForDebug(Ljava/lang/String;I)Z
    .locals 0

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static tagFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/camera/log/Log;->MAX_TAG_LEN:I

    sub-int/2addr v0, v1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const/4 v0, 0x0

    sget v2, Lcom/android/camera/log/Log;->MAX_TAG_LEN:I

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 120
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 121
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 168
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 169
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 176
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 177
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 184
    invoke-static {p0}, Lcom/android/camera/log/Log;->tagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 185
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
