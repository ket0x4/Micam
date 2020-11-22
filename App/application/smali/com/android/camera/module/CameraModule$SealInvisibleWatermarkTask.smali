.class Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SealInvisibleWatermarkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapWithWatermark:Landroid/graphics/Bitmap;

.field private mPngData:[B

.field private mSampleSize:I

.field private mWatermark:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1761
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    .line 1762
    iput p3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1753
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1767
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to seal watermark mWatermark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSampleSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1769
    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$5100(Lcom/android/camera/module/CameraModule;)[B

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    .line 1768
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->sealInvisibleWatermark([BILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    .line 1772
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1773
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seal watermark success. size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "encode to PNG"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1777
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1778
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mPngData:[B

    .line 1779
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "encode to PNG success"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1753
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 1786
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "onPostExecute 1"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1788
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute 2"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1790
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mPngData:[B

    invoke-static {p1, v1}, Lcom/android/camera/module/CameraModule;->access$6402(Lcom/android/camera/module/CameraModule;[B)[B

    .line 1791
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 1792
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$5700(Lcom/android/camera/module/CameraModule;)V

    .line 1793
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/camera/module/CameraModule;->access$5802(Lcom/android/camera/module/CameraModule;Z)Z

    .line 1794
    iput-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    .line 1796
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1797
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1800
    :cond_1
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute 3"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v0}, Lcom/android/camera/module/CameraModule;->access$6502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;)Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    return-void
.end method
