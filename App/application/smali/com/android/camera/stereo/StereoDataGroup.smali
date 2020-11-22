.class public Lcom/android/camera/stereo/StereoDataGroup;
.super Ljava/lang/Object;
.source "StereoDataGroup.java"


# instance fields
.field private mClearImage:[B

.field private mDepthMap:[B

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private mOriginalJpegData:[B

.field private mPictureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B[B[B[B)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    .line 71
    iput-object p3, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    .line 72
    iput-object p4, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    .line 73
    iput-object p5, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    .line 74
    iput-object p6, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    .line 75
    iput-object p7, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    return-void
.end method


# virtual methods
.method public getClearImage()[B
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    return-object p0
.end method

.method public getDepthMap()[B
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    return-object p0
.end method

.method public getJpsData()[B
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    return-object p0
.end method

.method public getLdcData()[B
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    return-object p0
.end method

.method public getMaskAndConfigData()[B
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    return-object p0
.end method

.method public getOriginalJpegData()[B
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    return-object p0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    return-object p0
.end method
