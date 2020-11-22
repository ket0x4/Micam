.class public Lcom/android/camera/sticker/StickerInfo;
.super Lcom/android/camera/network/resource/Resource;
.source "StickerInfo.java"


# instance fields
.field public downloadState:I

.field public imageId:I

.field public isLocal:Z

.field public srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/camera/network/resource/Resource;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/camera/network/resource/Resource;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    .line 30
    iput-object p1, p0, Lcom/android/camera/sticker/StickerInfo;->srcPath:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/android/camera/sticker/StickerInfo;->imageId:I

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/camera/sticker/StickerInfo;->isLocal:Z

    return-void
.end method


# virtual methods
.method public getDownloadState()I
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/sticker/StickerInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 60
    :cond_0
    iget p0, p0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    return p0
.end method

.method public getFilterId()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/camera/network/resource/Resource;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/android/camera/network/resource/Resource;->extra:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "filterId"

    .line 67
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    :cond_0
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return p0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 3

    .line 39
    iget-boolean v0, p0, Lcom/android/camera/sticker/StickerInfo;->isLocal:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/camera/sticker/StickerInfo;->srcPath:Ljava/lang/String;

    return-object p0

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/network/resource/Resource;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDownloaded()Z
    .locals 4

    .line 47
    iget-boolean v0, p0, Lcom/android/camera/sticker/StickerInfo;->isLocal:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 50
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/network/resource/Resource;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method
