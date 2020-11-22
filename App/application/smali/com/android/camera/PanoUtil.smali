.class public Lcom/android/camera/PanoUtil;
.super Ljava/lang/Object;
.source "PanoUtil.java"


# direct methods
.method public static createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2

    .line 93
    array-length v0, p0

    invoke-static {v0}, Lcom/android/camera/panorama/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method
