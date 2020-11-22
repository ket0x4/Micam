.class public Lcom/android/camera/PictureSize;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/PictureSize;",
        ">;"
    }
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/PictureSize;->setPictureSize(II)Lcom/android/camera/PictureSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/PictureSize;->setPictureSize(II)Lcom/android/camera/PictureSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    return-void
.end method


# virtual methods
.method public area()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public compareTo(Lcom/android/camera/PictureSize;)I
    .locals 2

    .line 84
    iget v0, p1, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/camera/PictureSize;->height:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/android/camera/PictureSize;

    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->compareTo(Lcom/android/camera/PictureSize;)I

    move-result p0

    return p0
.end method

.method public isAspectRatio16_9()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result p0

    return p0
.end method

.method public isAspectRatio18_9()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result p0

    return p0
.end method

.method public isAspectRatio1_1()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result p0

    return p0
.end method

.method public isAspectRatio4_3()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPictureSize(II)Lcom/android/camera/PictureSize;
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/camera/PictureSize;->width:I

    .line 39
    iput p2, p0, Lcom/android/camera/PictureSize;->height:I

    return-object p0
.end method

.method public setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    .line 46
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/android/camera/PictureSize;->width:I

    .line 49
    iput p1, p0, Lcom/android/camera/PictureSize;->height:I

    :goto_0
    return-object p0
.end method

.method public setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 28
    iput v2, p0, Lcom/android/camera/PictureSize;->width:I

    .line 29
    iput v2, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    add-int/lit8 v1, v1, 0x1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/PictureSize;->height:I

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
