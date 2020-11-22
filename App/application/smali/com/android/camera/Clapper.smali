.class public Lcom/android/camera/Clapper;
.super Ljava/lang/Object;
.source "Clapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Clapper$ClapperListener;
    }
.end annotation


# static fields
.field public static final AMPLITUDE_ABSOLUTE_THRESHOLD:I

.field public static final AMPLITUDE_INIT:I

.field private static final DEFAULT_AMPLITUDE_DIFF:I

.field public static final SCALE_FACTOR:I


# instance fields
.field private mContinueRecording:Z

.field private mListener:Lcom/android/camera/Clapper$ClapperListener;

.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/android/camera/Clapper;->getScaleFactor()I

    move-result v0

    sput v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    .line 15
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v1, v0, 0x7d0

    sput v1, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    mul-int/lit16 v1, v0, 0x7d0

    .line 21
    sput v1, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    mul-int/lit16 v0, v0, 0x1388

    .line 22
    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Clapper$ClapperListener;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Clapper;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/camera/Clapper;->threadRecordClap()V

    return-void
.end method

.method public static getScaleFactor()I
    .locals 2

    .line 38
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3A:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_X5:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x6

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private startRecorder()Z
    .locals 3

    .line 54
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "camera_claaper_recorder.3gp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 64
    iget-object p0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string v0, "Clapper"

    const-string v1, "Failed to start media recorder. Maybe it is used by other app."

    .line 66
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private threadRecordClap()V
    .locals 13

    .line 128
    sget v0, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    const/4 v1, 0x3

    :cond_0
    const-wide/16 v2, 0xc8

    .line 137
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Clapper"

    const-string v3, "Thread.sleep() interrupted"

    .line 139
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    if-le v2, v0, :cond_1

    int-to-double v3, v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    int-to-double v5, v2

    const-wide v7, 0x3fb9999999999998L    # 0.09999999999999998

    goto :goto_1

    :cond_1
    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    int-to-double v5, v2

    const-wide v7, 0x3fc9999999999998L    # 0.19999999999999996

    :goto_1
    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v0, v3

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    sub-int v3, v2, v0

    .line 157
    sget v4, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    if-le v0, v4, :cond_3

    .line 158
    sget v5, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    int-to-double v5, v5

    int-to-double v7, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    int-to-double v11, v4

    div-double/2addr v7, v11

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v4, v5

    goto :goto_2

    .line 159
    :cond_3
    sget v4, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    .line 166
    :goto_2
    iget-object v5, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    if-eqz v5, :cond_6

    .line 168
    sget v5, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    if-gt v2, v5, :cond_5

    if-lt v3, v4, :cond_4

    goto :goto_3

    :cond_4
    int-to-float v2, v2

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 175
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 176
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v3, v2}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    goto :goto_4

    .line 171
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    .line 172
    iget-object v2, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v2}, Lcom/android/camera/Clapper$ClapperListener;->releaseShutter()V

    .line 180
    :cond_6
    :goto_4
    iget-boolean v2, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/Clapper;->stopRecorder()V

    return-void
.end method


# virtual methods
.method public start()Z
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/android/camera/Clapper;->startRecorder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 79
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/Clapper$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Clapper$1;-><init>(Lcom/android/camera/Clapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    return-void
.end method

.method public stopRecorder()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 113
    iget-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Clapper"

    const-string v1, "Failed to stop media recorder."

    .line 116
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
