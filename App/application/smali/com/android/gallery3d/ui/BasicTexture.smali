.class public abstract Lcom/android/gallery3d/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v1, v0, v0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 46
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 60
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 61
    iput p3, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 62
    sget-object p1, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 63
    :try_start_0
    sget-object p2, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private freeResource()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    :cond_0
    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .line 196
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4

    .line 217
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/BasicTexture;

    .line 219
    iget-object v3, v2, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    if-ne v3, p0, :cond_0

    const/4 v3, 0x0

    .line 220
    iput v3, v2, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 224
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7

    .line 136
    new-instance v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 187
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 189
    sget-object p0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    return p0
.end method

.method public abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    return p0
.end method

.method public getTextureWidth()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return p0
.end method

.method public isLoaded()Z
    .locals 1

    .line 158
    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;->freeResource()V

    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method

.method protected setBorder(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHasBorder:Z

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 80
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 81
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 82
    iget p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 83
    iget p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 84
    iget p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    const/16 p2, 0x1000

    if-gt p1, p2, :cond_0

    iget p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    if-le p1, p2, :cond_1

    .line 85
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget p0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "texture is too large: %d x %d"

    .line 85
    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "BasicTexture"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
