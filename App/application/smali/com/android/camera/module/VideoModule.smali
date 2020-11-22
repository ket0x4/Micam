.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/VideoBase;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$LoadThumbnailTask;,
        Lcom/android/camera/module/VideoModule$SavingTask;
    }
.end annotation


# static fields
.field private static final SMART_BUTTON_ENABLE_DELAY:I

.field private static final TAG:Ljava/lang/String; = "VideoModule"

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field protected static final VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseFileName:Ljava/lang/String;

.field private mCaptureTimeLapse:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mFocusStartTime:J

.field protected mHfr:Ljava/lang/String;

.field protected mHighSpeedCaptureRate:I

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxVideoDurationInMs:I

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecordingPaused:Z

.field private mPauseClickTime:J

.field private volatile mPreviewReady:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecordingTime:Ljava/lang/String;

.field private mRecordingTimeCountsDown:Z

.field protected mRestartPreview:Z

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSavingResult:Z

.field private final mTaskLock:Ljava/lang/Object;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private mVideoFilename:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoRecordedDuration:J

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    .line 123
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    .line 179
    invoke-static {}, Lcom/android/camera/Device;->useLongDelayToEnableVideoStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/camera/module/VideoModule;->SMART_BUTTON_ENABLE_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 159
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    const-string v1, "normal"

    .line 162
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const/4 v1, 0x5

    .line 164
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const-wide/16 v1, 0x0

    .line 173
    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 174
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1562
    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/module/VideoModule;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return p0
.end method

.method static synthetic access$404(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_display_name"

    const-string v4, "Current video URI: "

    const-string v5, "_data"

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1126
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-string v8, " ms"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_a

    .line 1128
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    const-string v12, "delete invalid video: "

    const-wide/16 v13, 0x0

    if-nez v0, :cond_1

    .line 1129
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/VideoBase;->getDuration(Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v0, v13, v15

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1132
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deleted : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    move-wide/from16 v17, v15

    goto :goto_2

    .line 1137
    :cond_1
    :try_start_0
    iget-object v15, v1, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1138
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v9, "rw"

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :try_start_1
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    .line 1141
    :try_start_2
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 1136
    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v0

    if-eqz v9, :cond_2

    .line 1141
    :try_start_4
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v15, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-wide/from16 v17, v13

    :catch_1
    :cond_3
    :goto_1
    cmp-long v0, v13, v17

    if-nez v0, :cond_4

    .line 1145
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    return v11

    .line 1150
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "_size"

    .line 1150
    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "duration"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1155
    :try_start_6
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    iget v9, v1, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v9, :cond_5

    .line 1157
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "_%d"

    new-array v13, v11, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v9, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1158
    invoke-direct {v1, v0, v9}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "title"

    .line 1160
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12, v9}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1161
    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_5
    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    if-nez v3, :cond_7

    .line 1166
    new-instance v3, Ljava/io/File;

    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1167
    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    goto :goto_3

    .line 1169
    :cond_6
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 1173
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1174
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1175
    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    invoke-virtual {v9, v3}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    .line 1176
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "renameTo end<< cost time= "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 1179
    :catch_2
    :try_start_8
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "renameFile error, path = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :goto_3
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v3, v11, v5}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1185
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    .line 1190
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1193
    :cond_8
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 1194
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.hardware.action.NEW_VIDEO"

    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v3, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1196
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    const-string v5, "latitude"

    .line 1197
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    const-string v5, "longitude"

    .line 1198
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v11

    goto :goto_4

    :cond_9
    move v2, v10

    .line 1196
    :goto_4
    invoke-static {v0, v3, v2}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1207
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 1202
    :try_start_9
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v3, "failed to add video to media store"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 1203
    iput-object v2, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1204
    iput-object v2, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1207
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto :goto_6

    :goto_5
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 1210
    iput-object v2, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    .line 1211
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoToMediaStore end<< cost time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private createName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 240
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, ""

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/camera/Util;->generateVideoName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 242
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object p0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object p0
.end method

.method private forceToNormalMode()V
    .locals 3

    .line 471
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "normal"

    const-string v2, "pref_video_speed_key"

    .line 472
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 473
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 474
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 8

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1089
    invoke-static {p1}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-static {p1}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 1094
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1095
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1096
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1097
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_display_name"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1103
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    .line 1102
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1107
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1109
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1111
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1113
    :cond_2
    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1114
    sget-object p1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new video filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 8

    .line 505
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 512
    :cond_1
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 514
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v2, "slow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 516
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    goto/16 :goto_3

    .line 517
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->shouldElevatePreviewSize()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 520
    :cond_3
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 521
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 524
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    goto :goto_3

    .line 527
    :cond_5
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 528
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 529
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 530
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 532
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 534
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v3

    if-le v4, v2, :cond_6

    .line 535
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 542
    :cond_7
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 543
    sget-boolean v3, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v3, :cond_8

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    goto :goto_1

    .line 545
    :cond_8
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v4, v4

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v6, v3

    div-double v3, v4, v6

    .line 542
    :goto_1
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 547
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 548
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    goto :goto_3

    .line 518
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 519
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    .line 551
    :cond_a
    :goto_3
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getHFRQuality(II)I
    .locals 2

    .line 482
    sget-object v0, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->isProfileExist(ILjava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 486
    :cond_0
    sget-object p0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find hfrQuality in VIDEO_QUALITY_TO_HIGHSPEED, quality "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hfrQuality="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-double p1, p1

    div-double/2addr p1, p3

    .line 1646
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result p0

    int-to-double p3, p0

    div-double/2addr p1, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, p3

    double-to-long p0, p1

    return-wide p0
.end method

.method private initializeMiscControls()V
    .locals 0

    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 2298
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2299
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 2300
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0
.end method

.method private initializeRecorder()Z
    .locals 17

    move-object/from16 v1, p0

    .line 879
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v2, "initializeRecorder"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_11

    .line 886
    :cond_0
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 889
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v4, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 890
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    .line 893
    iget-boolean v0, v1, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    const-string v4, "rw"

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v0, "output"

    .line 894
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 897
    :try_start_0
    iget-object v7, v1, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 898
    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 901
    sget-object v7, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    .line 904
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    .line 906
    :goto_1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 909
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 910
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_3

    .line 912
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder: camera is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 915
    :cond_3
    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 917
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v3, "normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x5

    const/4 v10, -0x1

    if-eqz v0, :cond_4

    .line 918
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_2

    .line 920
    :cond_4
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v10, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 923
    :goto_2
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 924
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v1, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    iput v12, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->setProfileToRecorder()V

    .line 927
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v12, v1, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v12}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 930
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 933
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v12, 0x7f0f01da

    .line 935
    invoke-virtual {v1, v12}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_audio_focus_key"

    .line 933
    invoke-virtual {v0, v13, v12}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const v0, 0x7f0f01de

    .line 938
    invoke-virtual {v1, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_3
    sget-object v12, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set AudioParam camcorder_mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "camcorder_mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 944
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    .line 945
    sget-boolean v12, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v13, "fast"

    .line 946
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-ne v0, v9, :cond_7

    .line 948
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v9, 0x3d0900

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 951
    :cond_7
    iget-boolean v0, v1, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 952
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v12, 0x408f400000000000L    # 1000.0

    iget v3, v1, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v14, v3

    div-double/2addr v12, v14

    invoke-virtual {v0, v12, v13}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_7

    .line 953
    :cond_8
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 955
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v3, "pref_camera_hsr_value_key"

    invoke-virtual {v0, v3, v9}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "off"

    .line 958
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v11

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    if-eqz v3, :cond_a

    .line 959
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    if-lez v0, :cond_c

    .line 961
    sget-object v12, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Setting capture-rate = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v12, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-double v13, v0

    invoke-virtual {v12, v13, v14}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    if-eqz v3, :cond_b

    goto :goto_6

    .line 965
    :cond_b
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 967
    :goto_6
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting target fps = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 972
    :cond_c
    :goto_7
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/VideoModule;->configMediaRecorder(Landroid/media/MediaRecorder;)V

    .line 975
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 976
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_8

    :cond_d
    move-object v0, v9

    :goto_8
    if-eqz v0, :cond_e

    .line 979
    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    double-to-float v12, v12

    .line 980
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    double-to-float v0, v13

    .line 979
    invoke-virtual {v3, v12, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 985
    :cond_e
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v12

    const-wide/32 v14, 0x3200000

    sub-long/2addr v12, v14

    const-wide v14, 0xdac00000L

    cmp-long v0, v14, v12

    if-gez v0, :cond_f

    .line 987
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "need reduce, now maxFileSize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v14

    .line 990
    :cond_f
    sget-wide v14, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_10

    move-wide v12, v14

    :cond_10
    cmp-long v0, v7, v5

    if-lez v0, :cond_11

    cmp-long v0, v7, v12

    if-gez v0, :cond_11

    goto :goto_9

    :cond_11
    move-wide v7, v12

    .line 997
    :goto_9
    :try_start_1
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxFileSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    :catch_1
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v3, "slow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1007
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/lit8 v3, v3, 0x1e

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    goto :goto_a

    .line 1009
    :cond_12
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0, v11}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    .line 1018
    :goto_a
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    iget v3, v1, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 1019
    iget v3, v1, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-eq v3, v10, :cond_14

    .line 1020
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v11, :cond_13

    .line 1021
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_b

    .line 1023
    :cond_13
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x168

    goto :goto_b

    .line 1026
    :cond_14
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 1028
    :goto_b
    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1029
    iget v0, v1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, v1, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    .line 1037
    :try_start_2
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 1038
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_c

    .line 1040
    :cond_15
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {v1, v0}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1041
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1042
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v1, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_c

    .line 1044
    :cond_16
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/android/camera/FileCompat;->getDocumentFile(Ljava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    .line 1045
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    if-eqz v0, :cond_17

    .line 1046
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    .line 1047
    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1048
    :try_start_3
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v9, 0x0

    .line 1052
    :goto_d
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 1053
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1054
    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1060
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move v2, v11

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    :catchall_0
    move-exception v0

    const/16 v16, 0x0

    goto :goto_10

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    .line 1056
    :goto_e
    :try_start_4
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1060
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_f
    return v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v9

    :goto_10
    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 882
    :cond_18
    :goto_11
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder: null host"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1118
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    .line 1119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1120
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMovieSolidOn()Z
    .locals 2

    .line 1739
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v0, "fast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1747
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p0

    return p0

    .line 1740
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->disableVideoStabilizationInSpeedSlowMode()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 1744
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p0

    return p0
.end method

.method private isVideoProcessing()Z
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onRestartVideoRecording()V
    .locals 3

    .line 1330
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1331
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    const/4 v1, 0x0

    .line 1332
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1333
    new-instance v1, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1334
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 4

    .line 2373
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_0

    .line 2376
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "Could not pause media recorder. "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    .line 2382
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 2383
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2384
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .line 1066
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "releasing media recorder."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onReleaseRecording()V

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cleanupEmptyFile()V

    .line 1074
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1075
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1076
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1078
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioParam camcorder_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f01da

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camcorder_mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1082
    :cond_2
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1083
    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    .line 1084
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->abandonAudioFocus()V

    return-void
.end method

.method private releaseResources()V
    .locals 1

    .line 2397
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    .line 2398
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    const/4 v0, 0x0

    .line 2399
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    .line 1969
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 1970
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 1972
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1973
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method private setProfileToRecorder()V
    .locals 3

    .line 2494
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2495
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2496
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2497
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 2502
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ltz v1, :cond_0

    .line 2503
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 2505
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2506
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method private shouldElevatePreviewSize()Z
    .locals 3

    .line 555
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 558
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 564
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v0, p0

    if-lt v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private startVideoRecording()V
    .locals 6

    .line 1378
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordStart(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1380
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1381
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    .line 1383
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->silenceSounds()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->prepareRecording()V

    .line 1385
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1386
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->abandonAudioFocus()V

    .line 1388
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    .line 1390
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1391
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    .line 1396
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/android/camera/module/VideoModule;->SMART_BUTTON_ENABLE_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1398
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1401
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v3, "startVideoRecording process done"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordEnd()V

    .line 1407
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1408
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1409
    iput-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    .line 1410
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 1411
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 1412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    .line 1413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    const-string v0, ""

    .line 1414
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1416
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v3, "listen call state"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 1419
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepScreenOn()V

    .line 1420
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 1421
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 1422
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackVideoRecording()V

    return-void
.end method

.method private startVideoRecordingIfNeeded()V
    .locals 5

    .line 787
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isActionPerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 795
    sget-object p0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v0, "Caller delivered a wrong duration time large as 60s!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    const/4 p0, -0x1

    if-ne v0, p0, :cond_2

    const-wide/16 v3, 0x5dc

    goto :goto_0

    :cond_2
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 807
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private stopVideoOnPause()V
    .locals 4

    .line 1621
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoOnPause>>>isRecording =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1624
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1625
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    goto :goto_0

    .line 1628
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1631
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    goto :goto_1

    .line 1634
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    .line 1636
    :goto_1
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause<<< isSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " savingTask="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isRecording="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVideoRecordingAsync()V
    .locals 3

    .line 1600
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoRecordingAsync start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordStart(Ljava/lang/String;Z)V

    .line 1605
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->animateHold()V

    const/4 v0, 0x1

    .line 1606
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1609
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1611
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1612
    new-instance v1, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1613
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2210
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v14

    .line 2211
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2213
    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v4

    const-string v5, ""

    .line 2216
    invoke-static {v1, v2, v5}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v11, v3, Landroid/hardware/Camera$Size;->width:I

    iget v12, v3, Landroid/hardware/Camera$Size;->height:I

    .line 2227
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v18

    const/16 v0, 0xc

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v3, v4

    move v4, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    .line 2213
    invoke-virtual/range {v3 .. v18}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void
.end method

.method private trackPauseVideoRecording()V
    .locals 2

    .line 2437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2439
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    :goto_0
    const-string v1, "\u524d\u540e\u6444"

    .line 2438
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "capture"

    const-string v1, "video_pause_recording"

    .line 2440
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackVideoRecording()V
    .locals 3

    .line 2407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2409
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 2408
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v2, "\u6a21\u5f0f"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u753b\u8d28"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "off"

    :goto_1
    const-string v1, "\u95ea\u5149\u706f"

    .line 2412
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2416
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7b49\u7ea7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "capture"

    const-string v2, "video_taken"

    .line 2418
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2420
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v2, "fast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2422
    iget p0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 2423
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u95f4\u9694"

    .line 2422
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_time_lapse_interval"

    .line 2424
    invoke-static {v1, p0, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private trackVideoSnapshot()V
    .locals 2

    .line 2430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2432
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    :goto_0
    const-string v1, "\u524d\u540e\u6444"

    .line 2431
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "capture"

    const-string v1, "video_snapshot"

    .line 2433
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateMutexModePreference()V
    .locals 2

    .line 2077
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 2078
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected autoFocus(IIIIII)V
    .locals 3

    .line 2126
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 2129
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_9

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 2133
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2134
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 2136
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2137
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2138
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 2140
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    .line 2141
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2142
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    .line 2141
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2145
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    if-eq p6, v0, :cond_6

    .line 2146
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2147
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object p4

    .line 2146
    invoke-virtual {v0, v1, p4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2149
    :cond_6
    iget-object p4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p4, p5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    .line 2151
    iget-boolean p4, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez p4, :cond_7

    .line 2152
    iget-object p4, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewPosition(III)V

    :cond_7
    const/4 p1, 0x3

    if-ne p6, p1, :cond_8

    .line 2155
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    .line 2157
    :cond_8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_9
    return-void
.end method

.method public capture()Z
    .locals 3

    .line 1996
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2000
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    return v1

    .line 2004
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2005
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const v0, 0x7f0f0474

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v1

    .line 2011
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2012
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2013
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2014
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2016
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2017
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2020
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2022
    :goto_0
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/4 v0, 0x1

    .line 2024
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    .line 2025
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackVideoSnapshot()V

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 5

    .line 2455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v1, "slow"

    .line 2456
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2460
    :try_start_0
    sget-object v2, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2463
    :catch_0
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hfr("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoHighFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    if-lez v1, :cond_0

    .line 2467
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHighSpeedCaptureRate -> Setting capture-rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 2470
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting capture-rate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v0, v0

    .line 2471
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_1
    :goto_1
    const/16 v0, 0x1e

    .line 2476
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting target fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2479
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 2480
    invoke-static {}, Lcom/android/camera/Device;->supportHFRBitRateScale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2486
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v2, v0

    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v1, v2, v0

    .line 2488
    :cond_2
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile bitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Scaled Video bitrate : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_3
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 0

    .line 478
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz p0, :cond_0

    .line 494
    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "pref_video_speed_fast_key"

    .line 296
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "pref_video_speed_slow_key"

    .line 298
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "pref_audio_focus_mode_key"

    .line 301
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 0

    .line 2511
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    return p0
.end method

.method public isDoingAction()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFaceBeautyOn()Z
    .locals 1

    .line 2516
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFrontMirror()Z
    .locals 2

    .line 1981
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1985
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFrontMirror()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f03b5

    .line 1986
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 2237
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez p0, :cond_0

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

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 0

    .line 2403
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    return p0
.end method

.method protected isShowHFRDuration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isZoomEnabled()Z
    .locals 0

    .line 1372
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez p0, :cond_0

    .line 1373
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1374
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    .line 2163
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2167
    :cond_0
    sget-object p2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFocusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " waitForRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2168
    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2170
    iput-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    .line 2171
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    .line 2173
    :cond_1
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez p2, :cond_3

    .line 2174
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    if-eqz p1, :cond_3

    .line 2176
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isNeedMute()Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mIsTouchFocused:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 2177
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 2180
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 2181
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/android/camera/storage/Storage;->isCurrentStorageIsSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchToPhoneStorage()V

    .line 227
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 229
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    .line 284
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    return-void
.end method

.method public onCameraSwitched()V
    .locals 1

    .line 2056
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraSwitched()V

    .line 2057
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 2058
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->initializeCapabilities()V

    const/4 v0, 0x1

    .line 2059
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 2060
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2062
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2063
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 2064
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 2067
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoom()V

    .line 2068
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V

    .line 2069
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 2070
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const-string v0, "continuous-video"

    .line 2072
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 2073
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 250
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->onCreate(II)V

    .line 251
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 258
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    .line 259
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 261
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 263
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isQuickCapture()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    .line 264
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const-string p1, "continuous-video"

    .line 268
    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onDestroy()V

    .line 276
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 1220
    sget-object p1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRecorder error. what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1224
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    .line 2256
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object p1

    .line 2257
    sget-object p2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceDetection count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result p2

    if-eqz p2, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget p2, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v0, 0xface

    if-ne p2, v0, :cond_0

    .line 2261
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz p2, :cond_0

    .line 2262
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x3

    invoke-interface {p0, p2, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 2246
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 2247
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 2248
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2250
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    const/4 p1, 0x0

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    .line 1232
    iget-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz p2, :cond_2

    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x321

    if-ne p2, p3, :cond_2

    .line 1236
    iget-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz p2, :cond_2

    .line 1237
    sget-object p2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reached max size "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 1238
    iget p3, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-ge p2, p3, :cond_1

    .line 1239
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    .line 1241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1242
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1244
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const p1, 0x7f0f0493

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1245
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 814
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " paused ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ignore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDoing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isDoingAction()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " previewing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preview ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x18

    if-eq p1, v2, :cond_5

    const/16 v3, 0x19

    if-eq p1, v3, :cond_5

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-eq p1, v3, :cond_1

    const/16 v3, 0x57

    if-eq p1, v3, :cond_5

    if-eq p1, v0, :cond_5

    goto :goto_3

    .line 824
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    if-eqz v0, :cond_9

    .line 825
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 828
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 829
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 830
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x1e

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x28

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    :cond_4
    :goto_0
    return v1

    .line 843
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    if-eq p1, v2, :cond_8

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v1

    .line 849
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 846
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 857
    :cond_9
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onObjectStable()V
    .locals 9

    .line 2290
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2291
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->canAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x5

    .line 2292
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-int v5, v1

    .line 2293
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v6, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v7, v0

    const/4 v8, 0x2

    move-object v2, p0

    .line 2292
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIIII)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1954
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 1955
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 1956
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 1955
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 1957
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 1961
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 1962
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 1963
    sget-object p1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device orientation change to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 631
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 636
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 640
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection()V

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->waitStereoSwitchThread()V

    .line 642
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 646
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 648
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa2

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 650
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 651
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    goto :goto_1

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 656
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    goto :goto_1

    .line 654
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 660
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 668
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    .line 670
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 671
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    .line 677
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 681
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 683
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 686
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_7
    const/4 v0, -0x1

    .line 688
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 689
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    return-void
.end method

.method public onPauseButtonClick()V
    .locals 7

    .line 2331
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPauseResumeListener.onClick() mMediaRecorderRecordingPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mRecorderBusy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMediaRecorderRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2336
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto/16 :goto_2

    .line 2339
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    const/4 v0, 0x1

    .line 2340
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2342
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 2343
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2346
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 2347
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->resumeMediaRecorder(Landroid/media/MediaRecorder;)V

    goto :goto_0

    .line 2349
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 2351
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    const-wide/16 v3, 0x0

    .line 2352
    iput-wide v3, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 2353
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 2354
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, ""

    .line 2355
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 2356
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 2357
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2359
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v4, "Could not start media recorder. "

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2360
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 2361
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    goto :goto_1

    .line 2364
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    .line 2365
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackPauseVideoRecording()V

    .line 2366
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    .line 2368
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2369
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoPauseResumeListener.onClick() end. mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 197
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    .line 199
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    .line 200
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 203
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 204
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 205
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 3

    .line 211
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSizeChanged width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method protected onPreviewStart()V
    .locals 4

    .line 768
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 771
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 772
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 773
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 v1, 0x3

    .line 777
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->onShutterButtonFocus(ZI)V

    .line 778
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 583
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 584
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const/4 v0, 0x1

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 595
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    if-eqz v1, :cond_3

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 597
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoom()V

    .line 603
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V

    .line 604
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepScreenOnAwhile()V

    .line 606
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_4

    .line 607
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 610
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->onSettingsBack()V

    .line 612
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v1, :cond_5

    .line 613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mOnResumeTime:J

    .line 614
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 617
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 620
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->deleteCurrentVideo()V

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->hideAlert()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .line 2032
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    return-void

    .line 2041
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2043
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2044
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2050
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setCameraParameters()V

    goto :goto_1

    .line 2046
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2047
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2048
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    :goto_1
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onShutterButtonClick(I)V

    .line 349
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 8

    .line 2097
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    if-nez v0, :cond_3

    .line 2098
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 2102
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;)V

    .line 2104
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 2105
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2109
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 2110
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2111
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 2115
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mIsTouchFocused:Z

    .line 2116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    .line 2117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2118
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 2119
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v5

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2120
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v6

    const/4 v7, 0x3

    move-object v1, p0

    .line 2119
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 694
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 696
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsFromStop:Z

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPause()V

    .line 699
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsFromStop:Z

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    :cond_1
    return-void
.end method

.method public onStopRecording()V
    .locals 2

    .line 2445
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 2447
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    const-string v0, "continuous-video"

    .line 2449
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method protected onStopVideoRecording(Z)V
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 341
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 342
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    .line 2389
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method protected performVolumeKeyClicked(Ljava/lang/String;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 862
    iget-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    if-eqz p1, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 864
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x14

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method protected prepareRecording()V
    .locals 1

    .line 2520
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setVideoFlipIfNeed()V

    .line 2522
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public readVideoPreferences()V
    .locals 8

    .line 378
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    .line 388
    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v5, "Got unexpeced exception: "

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 392
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 394
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 395
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 397
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v4, "fast"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_4

    .line 399
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const v5, 0x7f0f0409

    .line 401
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_video_time_lapse_frame_interval_key"

    .line 399
    invoke-virtual {v3, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 403
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 405
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0x3e8

    if-lt v0, v4, :cond_2

    const/16 v1, 0x3fa

    if-le v0, v1, :cond_3

    :cond_2
    add-int/lit16 v0, v0, -0x3e8

    .line 410
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 411
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->forceToNormalMode()V

    .line 412
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    const v3, 0x7f0f0468

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v3, v5}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 415
    :cond_3
    rem-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    goto :goto_3

    .line 417
    :cond_4
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 418
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v5, "slow"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoHighFrame()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 420
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHfrSetting()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    .line 421
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    .line 423
    :try_start_1
    aget-object v7, v5, v2

    .line 424
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/module/VideoModule;->mQuality:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 426
    :catch_1
    iput v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 428
    :goto_2
    iget v7, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-ne v7, v6, :cond_5

    .line 429
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid hfr setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->forceToNormalMode()V

    .line 431
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    goto :goto_3

    .line 433
    :cond_5
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    .line 434
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v0

    goto :goto_3

    .line 437
    :cond_6
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    .line 438
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v0

    .line 443
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_8

    iget v1, v1, Landroid/media/CamcorderProfile;->quality:I

    rem-int/2addr v1, v4

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v1, v3, :cond_8

    .line 444
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 446
    :cond_8
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 447
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readVideoPreferences: frameRate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", codec="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    .line 454
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVideoDurationTime()I

    move-result v0

    mul-int/2addr v0, v4

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 456
    :catch_2
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-nez v0, :cond_9

    const v0, 0x75300

    .line 457
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_4

    .line 459
    :cond_9
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 464
    :goto_4
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_a

    if-ge v0, v4, :cond_a

    .line 466
    iput v4, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    :cond_a
    return-void
.end method

.method public record()V
    .locals 2

    .line 358
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v1, "record"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->enableCPUBoostWhenStartRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/android/camera/PlatformAdapter;->INSTANCE:Lcom/android/camera/PlatformAdapter;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/PlatformAdapter;->boostCPU(I)V

    .line 365
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 366
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 368
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    return-void
.end method

.method public registerProtocol()V
    .locals 4

    .line 185
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->registerProtocol()V

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xa4

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void
.end method

.method protected removeHandlerMessages()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 626
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 2

    .line 568
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 572
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v1, v1

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v1, v1

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :goto_0
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 0

    return-void
.end method

.method public setNeedRestartPreview(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    return-void
.end method

.method protected setVideoFlipIfNeed()V
    .locals 0

    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .line 2268
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2273
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    .line 2275
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2276
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2277
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateMotionFocusManager()V

    .line 2279
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2281
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateAutoFocusMoveCallback()V

    .line 2283
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2284
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected startPlayVideoActivity()V
    .locals 4

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v2}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 314
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 4

    .line 710
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 714
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    .line 715
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 716
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 722
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setCameraParameters()V

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setPreviewTexture()V

    .line 725
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 726
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->startFaceDetection()V

    .line 727
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 733
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    .line 736
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    .line 730
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method protected startRecordVideo()Z
    .locals 5

    .line 1340
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    .line 1351
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onStartRecording()V

    .line 1352
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 1353
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    .line 1355
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 1358
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v3, "Could not start media recorder."

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1359
    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v2, 0x7f0f00b9

    const v3, 0x7f0f00b8

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 1363
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1365
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    return v1

    .line 1342
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize media recorder"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public stopObjectTracking(Z)V
    .locals 2

    .line 2304
    sget-object p1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez p1, :cond_1

    .line 2306
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2307
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->onStopObjectTrack()V

    :cond_0
    return-void

    .line 2311
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 2312
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    const/4 v0, 0x0

    .line 2313
    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2314
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 2315
    iget-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2316
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2317
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 2319
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isAdjustingObjectView()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2321
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setCameraParameters()V

    .line 2323
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->onStopObjectTrack()V

    :cond_4
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 746
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 749
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    .line 750
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->stopPreview()V

    return-void
.end method

.method protected subStopRecording()Z
    .locals 5

    .line 1493
    monitor-enter p0

    .line 1495
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1497
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1498
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1499
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 1501
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    .line 1503
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onStopRecording()V

    .line 1504
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1506
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1507
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    iput-object v2, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    .line 1508
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 1509
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v0, v1

    .line 1511
    :goto_0
    :try_start_3
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v4, "stop fail"

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1512
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1513
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoBase;->deleteVideoFile(Ljava/lang/String;)V

    .line 1515
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    if-eqz v2, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    .line 1518
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1519
    :try_start_4
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    .line 1520
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1522
    :try_start_5
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 1524
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1525
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    move v1, v0

    .line 1538
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1539
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1520
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 1544
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1545
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    .line 1546
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public unRegisterProtocol()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->unRegisterProtocol()V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 756
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 761
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected updateLoadUI(Z)V
    .locals 0

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 14

    .line 1650
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 1653
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    .line 1654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1655
    iget-wide v2, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 1656
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v2, :cond_1

    .line 1657
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 1662
    :cond_1
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const v4, 0xea60

    sub-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    const-wide/16 v4, 0x0

    .line 1667
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v6, v6

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e7

    add-long/2addr v4, v6

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    const-wide/16 v6, 0x3e8

    .line 1672
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v9, "normal"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1673
    invoke-static {v4, v5, v3}, Lcom/android/camera/module/VideoBase;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1676
    :cond_4
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v9, "fast"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_5

    .line 1677
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v6, v6

    double-to-long v12, v6

    goto :goto_2

    .line 1679
    :cond_5
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v12, "slow"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isShowHFRDuration()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1681
    sget-object v8, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v12, "off"

    .line 1682
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 1683
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    div-double/2addr v6, v12

    .line 1684
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    div-int/2addr v12, v8

    int-to-long v12, v12

    goto :goto_2

    :cond_6
    move-wide v12, v6

    move-wide v6, v10

    :goto_2
    cmpl-double v8, v6, v10

    if-eqz v8, :cond_7

    .line 1692
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 1693
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1691
    invoke-static {v3, v4, v5}, Lcom/android/camera/module/VideoBase;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 1695
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    double-to-long v6, v6

    goto :goto_3

    .line 1699
    :cond_7
    invoke-static {v4, v5, v3}, Lcom/android/camera/module/VideoBase;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    :cond_8
    move-wide v6, v12

    .line 1703
    :goto_3
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v4, :cond_9

    .line 1704
    invoke-interface {v4, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 1706
    :cond_9
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 1708
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v3, v2, :cond_a

    .line 1711
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    :cond_a
    const-wide/16 v2, 0x1f4

    .line 1727
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v4, :cond_b

    .line 1728
    rem-long/2addr v0, v6

    sub-long v2, v6, v0

    .line 1730
    :cond_b
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 0

    .line 1427
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 12

    .line 1752
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 1756
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 1759
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1762
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-size"

    invoke-virtual {v1, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f0373

    .line 1768
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_video_flashmode_key"

    .line 1766
    invoke-virtual {v0, v3, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    .line 1776
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 1777
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorEffect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1779
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1783
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1784
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1788
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1793
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1794
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1797
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1807
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    const-string v3, "normal"

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 1808
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1809
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1810
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 1811
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v5, 0x6

    if-ge v0, v5, :cond_9

    :cond_6
    sget-boolean v0, Lcom/android/camera/Device;->IS_C8:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 1812
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    sget-boolean v0, Lcom/android/camera/Device;->IS_E4:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 1813
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 1814
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1815
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHsrVideoRecord()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1816
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v5, "videoStabilization: on"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1818
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1819
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_1

    .line 1822
    :cond_9
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v5, "videoStabilization: off"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1824
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1825
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    .line 1832
    :cond_a
    :goto_1
    invoke-static {}, Lcom/android/camera/Device;->isVideoSnapshotSizeLimited()Z

    move-result v0

    const v5, 0x7fffffff

    if-eqz v0, :cond_b

    .line 1833
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1834
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_2

    :cond_b
    move v0, v5

    .line 1840
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 1841
    iget v7, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    int-to-double v7, v7

    iget v9, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v6, v7, v8, v5, v0}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1844
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1846
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v6, "get null pictureSize"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    .line 1847
    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1848
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1850
    :cond_d
    :goto_3
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snapshotSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    if-nez v6, :cond_e

    move-object v0, v7

    goto :goto_4

    .line 1851
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    :goto_4
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x15

    .line 1854
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_11

    .line 1858
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1859
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v5

    .line 1860
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v6

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v5, v8, v9}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1862
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    if-eqz v0, :cond_f

    .line 1863
    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1864
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v8}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1866
    :cond_f
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnailSize: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_5

    .line 1867
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1866
    :goto_5
    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1871
    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v4}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1876
    :cond_12
    :goto_6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1878
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1880
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1881
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 1882
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setBeautyParams()V

    .line 1884
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearExposureTime(Landroid/hardware/Camera$Parameters;)V

    .line 1885
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1886
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    .line 1890
    :cond_13
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v5, "slow"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v2

    goto :goto_7

    .line 1891
    :cond_14
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 1892
    :goto_7
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "antiBanding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1894
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1896
    :cond_15
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v5, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 1897
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uiStyle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v5, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq v5, v0, :cond_16

    .line 1899
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 1901
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->setUiStyle(I)V

    .line 1902
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1904
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    .line 1905
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/android/camera/module/VideoModule;->onPreviewSizeChanged(II)V

    .line 1908
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_16

    .line 1909
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    .line 1916
    :cond_16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "xiaomi-time-watermark"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1917
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1919
    :cond_17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "xiaomi-dualcam-watermark"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1920
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1922
    :cond_18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "watermark"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1923
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    :cond_19
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 1928
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1929
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1932
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-hsr"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1934
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "pref_camera_hsr_value_key"

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1936
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1938
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set video-hsr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setVideoFlipIfNeed()V

    return-void
.end method

.method protected waitForRecorder()V
    .locals 3

    .line 1550
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1551
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1553
    :try_start_1
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v2, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1556
    :try_start_2
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string v2, "Got notify from Media recorder()"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
