.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawJPEGAttribute"


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field private mApplyDualCameraWaterMark:Z

.field private mApplyTimeWaterMark:Z

.field private mApplyWaterMark:Z

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mData:[B

.field public mDate:J

.field private mDepthData:[B

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHeight:I

.field public mInfo:Lcom/android/camera/PictureInfo;

.field public mIsSquare:Z

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field private mRawData:[B

.field public mShootRotation:F

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyTimeWaterMark:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyDualCameraWaterMark:Z

    return p1
.end method


# virtual methods
.method public composeDynamicSpotData()V
    .locals 10

    .line 99
    new-instance v0, Lcom/android/camera/ArcsoftDepthMap;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    invoke-direct {v0, v1}, Lcom/android/camera/ArcsoftDepthMap;-><init>([B)V

    .line 103
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/effect/renders/TextWaterMark;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/Util;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    sget-object v3, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "composeDynamicSpotData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v8, v2

    .line 112
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v1, v3}, Lcom/android/camera/Util;->getTimeWaterMarkData(II)[B

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->initExif()V

    .line 117
    iget-object v4, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-object v5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftDepthMap;->getBlurLevel()I

    move-result v7

    invoke-static/range {v4 .. v9}, Lcom/android/gallery3d/exif/ExifInterface;->writeDepthExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Point;I[B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 118
    invoke-virtual {v0}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapData()[B

    move-result-object v0

    .line 120
    sget-object v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    const-string v3, "composeDepthMapPicture: process in portrait depth map picture"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v5, v1

    iget-object v6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    array-length v6, v6

    add-int/2addr v5, v6

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 124
    array-length v6, v1

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    iget-object v6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v6, v6

    array-length v8, v1

    invoke-static {v1, v7, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v1, v1

    iget-object v6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    array-length v6, v6

    add-int/2addr v1, v6

    array-length v6, v0

    invoke-static {v0, v7, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "composeDepthMapPicture: compose portrait picture cost: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 131
    iput-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    .line 132
    iput-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    return-void
.end method

.method public decomposeDynamicSpotData()[B
    .locals 14

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifParser;->seekDynamicSpotDataIndex([B)[I

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 70
    iput-object v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    .line 71
    iput-object v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 74
    aget v5, v2, v4

    const/4 v6, 0x2

    add-int/2addr v5, v6

    .line 75
    aget v7, v2, v6

    const/4 v8, 0x1

    aget v9, v2, v8

    sub-int/2addr v7, v9

    add-int/2addr v7, v6

    .line 76
    iget-object v6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    array-length v9, v6

    const/4 v10, 0x3

    aget v11, v2, v10

    sub-int/2addr v9, v11

    .line 77
    new-array v11, v5, [B

    .line 78
    new-array v12, v7, [B

    .line 79
    new-array v13, v9, [B

    .line 81
    invoke-static {v6, v4, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    aget v6, v2, v8

    invoke-static {v5, v6, v12, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    aget v2, v2, v10

    invoke-static {v5, v2, v13, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    sget-object v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "split data done, time spend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object v11, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 87
    invoke-static {v13}, Lcom/android/camera/ArcsoftDepthMap;->isDepthMapData([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-object v12, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    .line 89
    iput-object v13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    const-string v1, "Invalid depth data!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    .line 93
    iput-object v3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDepthData()[B
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDepthData:[B

    return-object p0
.end method

.method public getRawData()[B
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    return-object p0
.end method

.method public initExif()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    invoke-virtual {v1}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    sget-object v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initExif:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public isApplyDualCameraWaterMark()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyDualCameraWaterMark:Z

    return p0
.end method

.method public isApplyTimeWaterMark()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyTimeWaterMark:Z

    return p0
.end method

.method public isApplyWaterMark()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return p0
.end method

.method public isSquare()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsSquare:Z

    return p0
.end method

.method public setApplyWaterMark(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    return-void
.end method

.method public setRawData([B)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRawData:[B

    return-void
.end method
