.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const-string v0, "4x3"

    .line 11
    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 192
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v4, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 199
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method private static _findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 206
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v4, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 213
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static _findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 178
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v4, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 185
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 164
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v4, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 171
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 248
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 255
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 261
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 262
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 269
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method private static findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 233
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 234
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 241
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .line 219
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 220
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v4, v3, v2

    mul-int v5, v0, v1

    if-le v4, v5, :cond_0

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 227
    :cond_1
    new-instance p0, Lcom/android/camera/PictureSize;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PictureSize;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .line 102
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    :cond_2
    new-instance v0, Lcom/android/camera/PictureSize;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->width:I

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    :cond_3
    return-object v0
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isAspectRatio18_9()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    :cond_4
    new-instance v1, Lcom/android/camera/PictureSize;

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PictureSize;

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :cond_5
    return-object v1
.end method

.method public static getBestPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;
    .locals 3

    .line 63
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-direct {v0, p0}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 68
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p0

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 70
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio18_9()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 72
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_4
    new-instance p0, Lcom/android/camera/PictureSize;

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PictureSize;

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :cond_5
    return-object p0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 6

    .line 22
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    const v1, 0x7f0f0300

    const/4 v2, 0x1

    const v3, 0x7f0f0310

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 25
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0f0301

    .line 26
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0

    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    .line 30
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 31
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public static getPictureSize(Z)Lcom/android/camera/PictureSize;
    .locals 1

    .line 55
    new-instance p0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .line 306
    sget-boolean v0, Lcom/android/camera/Device;->IS_X9:Z

    const-string v1, "16x9"

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 319
    new-instance v2, Lcom/android/camera/PictureSize;

    invoke-direct {v2}, Lcom/android/camera/PictureSize;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 320
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 321
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    invoke-virtual {v2, v5}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 322
    invoke-virtual {v2}, Lcom/android/camera/PictureSize;->area()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 324
    invoke-virtual {v2}, Lcom/android/camera/PictureSize;->area()I

    move-result v0

    move v4, v0

    move v0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    invoke-virtual {v2, p0}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 328
    invoke-virtual {v2}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "4x3"

    .line 329
    sput-object p0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_3
    sput-object v1, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    :goto_1
    return-void

    .line 307
    :cond_4
    :goto_2
    sput-object v1, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .line 119
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_8

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_8

    .line 123
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 126
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 128
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    if-gt v1, p2, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, p1

    .line 135
    :cond_2
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    sget-object p2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_3
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 142
    sget-object p2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 147
    sget-object p2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_5
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 152
    sget-object p1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_6
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 156
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not find the desire picture sizes!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The supported picture size list return from hal is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
