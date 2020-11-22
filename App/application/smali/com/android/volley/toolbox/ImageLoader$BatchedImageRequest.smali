.class Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/android/volley/VolleyError;

.field private final mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 439
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    .line 440
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/android/volley/VolleyError;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-object p0
.end method

.method public setError(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-void
.end method
