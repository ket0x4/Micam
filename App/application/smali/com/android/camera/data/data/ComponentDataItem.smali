.class public final Lcom/android/camera/data/data/ComponentDataItem;
.super Ljava/lang/Object;
.source "ComponentDataItem.java"


# instance fields
.field public mDisplayNameRes:I

.field public mIconRes:I

.field public mIconSelectedRes:I

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 17
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 18
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 19
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method
