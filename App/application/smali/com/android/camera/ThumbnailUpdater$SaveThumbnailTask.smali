.class Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method private constructor <init>(Lcom/android/camera/ThumbnailUpdater;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/ThumbnailUpdater$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, [Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 3

    .line 179
    array-length v0, p1

    .line 180
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p0}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
