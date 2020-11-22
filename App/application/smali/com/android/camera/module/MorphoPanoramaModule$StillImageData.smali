.class Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StillImageData"
.end annotation


# instance fields
.field public mId:I

.field public mImage:Ljava/nio/ByteBuffer;

.field public mMotionData:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(II[B[B)V
    .locals 0

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    .line 948
    invoke-static {p3}, Lcom/android/camera/PanoUtil;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    .line 949
    invoke-static {p4}, Lcom/android/camera/PanoUtil;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    return-void
.end method
