.class Lcom/android/camera/storage/Storage$1;
.super Ljava/util/LinkedHashMap;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/support/v4/provider/DocumentFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IFZ)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/support/v4/provider/DocumentFile;",
            ">;)Z"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/android/camera/storage/Storage;->access$000()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
