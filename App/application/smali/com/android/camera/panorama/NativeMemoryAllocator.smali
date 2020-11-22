.class public Lcom/android/camera/panorama/NativeMemoryAllocator;
.super Ljava/lang/Object;
.source "NativeMemoryAllocator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MorphoNativeMemoryAllocator"

    :try_start_0
    const-string v1, "morpho_memory_allocator"

    .line 13
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load libmorpho_memory_allocator.so"

    .line 14
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "can\'t loadLibrary"

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static final native allocateBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static final native freeBuffer(Ljava/nio/ByteBuffer;)I
.end method
