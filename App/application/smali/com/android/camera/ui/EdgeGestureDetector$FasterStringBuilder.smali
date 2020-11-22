.class final Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EdgeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 294
    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 379
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    iget p0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
