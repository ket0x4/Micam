.class public Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 366
    iput-object p3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 367
    iput-object p4, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 368
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$400(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
