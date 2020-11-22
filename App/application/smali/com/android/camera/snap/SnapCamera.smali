.class public Lcom/android/camera/snap/SnapCamera;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapCamera"


# instance fields
.field private contentValues:Landroid/content/ContentValues;

.field private mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsCamcorder:Z

.field private mLastAngle:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPath:Ljava/lang/String;

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecording:Z

.field private mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 81
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 87
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 348
    new-instance v0, Lcom/android/camera/snap/SnapCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapCamera$2;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 98
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 99
    iput-object p2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 100
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSound()V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSnapType()V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V

    .line 105
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    sget-object p1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapCamera;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapCamera;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/snap/SnapCamera;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/snap/SnapCamera;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/snap/SnapCamera;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/PictureInfo;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->playSound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPictureInfo()Lcom/android/camera/PictureInfo;
    .locals 1

    .line 389
    new-instance v0, Lcom/android/camera/PictureInfo;

    invoke-direct {v0}, Lcom/android/camera/PictureInfo;-><init>()V

    .line 390
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-virtual {v0, p0}, Lcom/android/camera/PictureInfo;->setSensorType(I)V

    return-object v0
.end method

.method private initCamera()V
    .locals 7

    const-string v0, "on"

    const-string v1, "reflecting constructor of SurfaceTexture failed. "

    :try_start_0
    const-string v2, "android.graphics.SurfaceTexture"

    .line 143
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    .line 146
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iput-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 148
    iput v6, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 149
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "persist.camera.snap.auto_switch"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 153
    invoke-static {}, Lcom/android/camera/CameraSettings;->readPreferredCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    const/16 v5, 0xa0

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/camera/CameraHolder;->open(IZI)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 157
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v4

    invoke-static {v0, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video-size"

    .line 165
    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "camera-service-mute"

    const-string v4, "true"

    .line 166
    invoke-virtual {v2, v0, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "continuous-video"

    .line 167
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 170
    invoke-static {v4, v5, v6}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 173
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 174
    invoke-interface {v4, v5, v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v4

    const-string v5, "pref_camera_picturesize_key"

    .line 175
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 177
    iget v5, v4, Lcom/android/camera/PictureSize;->width:I

    iput v5, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 178
    iget v4, v4, Lcom/android/camera/PictureSize;->height:I

    iput v4, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    .line 180
    iget v4, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    iget v5, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 181
    iget v4, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    const-string v4, "zsl"

    .line 182
    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "continuous-picture"

    .line 183
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string v4, "street-snap-mode"

    .line 184
    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no-display-mode"

    .line 185
    invoke-virtual {v2, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 204
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception p0

    .line 202
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 200
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception p0

    .line 198
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception p0

    .line 196
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_5
    move-exception p0

    .line 194
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera init failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private initOrientationListener()V
    .locals 3

    .line 209
    new-instance v0, Lcom/android/camera/snap/SnapCamera$1;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {}, Lcom/android/camera/Device;->isSensorHasLatency()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/snap/SnapCamera$1;-><init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 249
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_1

    .line 253
    :cond_1
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_1
    return-void
.end method

.method private initSnapType()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return-void
.end method

.method private initSound()V
    .locals 3

    .line 132
    new-instance v0, Lcom/android/camera/MiuiCameraSound;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 133
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    return-void
.end method

.method public static isSnapEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 113
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_snap_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_long_press_volume_down"

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 117
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Street-snap-picture"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Street-snap-movie"

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private playSound()V
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    :cond_0
    return-void
.end method

.method private stopCamcorder()V
    .locals 10

    .line 492
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "_data"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 493
    iget-boolean v4, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v4, :cond_3

    .line 496
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 499
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 503
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1

    .line 505
    invoke-static {v0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    sget-object v4, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v5, "Duration is too short, so delete the file."

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    move-object v4, v2

    goto :goto_0

    .line 512
    :cond_1
    invoke-static {v0, v3}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 515
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete invalid video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v2

    .line 521
    :goto_1
    :try_start_3
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drop 0:00s file failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 523
    :goto_2
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    .line 527
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 528
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 529
    iput-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 533
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 540
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 541
    invoke-static {v0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, v2

    goto :goto_4

    .line 543
    :cond_5
    invoke-static {v0, v3}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 544
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v6

    .line 546
    :goto_4
    iget-object v8, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v9, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_6

    .line 554
    sget-object v4, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v0

    goto :goto_6

    :cond_6
    move-object v2, v4

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v2

    .line 563
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 566
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_6
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v0, :cond_7

    .line 570
    invoke-interface {v0, v2}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 574
    :cond_7
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    return-void
.end method


# virtual methods
.method public isCamcorder()Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return p0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 61
    :cond_0
    sget-object p1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string p2, "duration or file size reach MAX"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 296
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "SnapCamera.release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 298
    :try_start_0
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 300
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 304
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :catch_0
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :catch_1
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 319
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    :catch_2
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 328
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 329
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 330
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 331
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 332
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 333
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 334
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    .line 335
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 341
    :catch_3
    :cond_2
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    .line 343
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    :cond_3
    return-void
.end method

.method public startCamcorder()V
    .locals 9

    .line 400
    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 402
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 403
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v2, 0x493e0

    iput v2, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 411
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 414
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 417
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    .line 416
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 420
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 421
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v4}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const-string v6, "_SNAP"

    invoke-static {v5, v2, v3, v4, v6}, Lcom/android/camera/Util;->generateVideoName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v6}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v6

    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    .line 427
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 428
    iget-object v7, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v5, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v3, "mime_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v3, "resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 434
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 435
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v3, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 438
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 441
    :cond_1
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 444
    :try_start_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mPath:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 448
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 452
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x3200000

    sub-long/2addr v2, v4

    const-wide v4, 0xdac00000L

    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 454
    sget-object v6, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need reduce , now maxFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 457
    :cond_3
    sget-wide v4, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 458
    sget-wide v2, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :catch_0
    :try_start_3
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set orientation to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 473
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 475
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 476
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 478
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    :try_start_4
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 483
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 480
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 485
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare or start failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 487
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    :goto_1
    return-void
.end method

.method public takeSnap()V
    .locals 3

    .line 283
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "take picture failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateCameraOrientation(I)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 270
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method
