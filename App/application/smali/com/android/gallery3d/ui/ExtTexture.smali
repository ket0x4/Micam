.class public Lcom/android/gallery3d/ui/ExtTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "ExtTexture.java"


# static fields
.field private static sTextureId:[I


# instance fields
.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 27
    sput-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    .line 31
    sget-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 32
    sget-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "texId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTexture"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8d65

    .line 34
    iput v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3

    .line 38
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const v1, 0x812f

    const/16 v2, 0x2802

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v2, 0x2803

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0x2801

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 45
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v2, 0x2800

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    return p0
.end method

.method public isOpaque()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
