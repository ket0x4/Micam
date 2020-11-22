.class public Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StillProcTask"
.end annotation


# instance fields
.field private mWeakRefModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/MorphoPanoramaModule;",
            ">;"
        }
    .end annotation
.end field

.field private shootCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 1

    .line 959
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    .line 960
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 966
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 967
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$600(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 971
    :cond_0
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$800(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 972
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$800(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .line 974
    sget-boolean v3, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0f01af

    .line 975
    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$900(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    .line 975
    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 976
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 977
    iget-object v4, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v5, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-static {v4, v5, v3}, Lcom/android/camera/storage/Storage;->saveMorphoPanoramaOriginalPic(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    .line 979
    :cond_1
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1000()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_4

    .line 980
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": run attachStillImageExt() start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    if-nez v3, :cond_2

    const/high16 v3, -0x40000000    # -2.0f

    goto :goto_1

    .line 983
    :cond_2
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    iget-object v6, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v7, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v8, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    :goto_1
    if-eqz v3, :cond_3

    .line 984
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v6, :cond_3

    .line 985
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "%s: attachStillImageExt() -> 0x%x"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 993
    :cond_3
    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 994
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v1

    iget-object v3, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 996
    :cond_4
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 997
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": run attachStillImageRaw() start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    iget-object v6, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v7, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v8, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1000
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "%s:attachStillImageExt() -> 0x%x"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    .line 1004
    iget-object v1, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1005
    iget-object v1, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1006
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1408(Lcom/android/camera/module/MorphoPanoramaModule;)I

    :cond_6
    const-wide/16 v0, 0x64

    .line 1009
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1013
    :goto_3
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StillProcTask still running"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1017
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule;

    if-eqz v0, :cond_9

    .line 1018
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1400(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    if-gt v2, v3, :cond_8

    goto :goto_5

    .line 1021
    :cond_8
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$800(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1022
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$800(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .line 1023
    iget-object v3, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1024
    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1025
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1408(Lcom/android/camera/module/MorphoPanoramaModule;)I

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method
