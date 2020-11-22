.class public abstract Lcom/android/camera/network/net/json/BaseJsonRequest;
.super Lcom/android/camera/network/net/base/VolleyRequest;
.source "BaseJsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/VolleyRequest<",
        "Lorg/json/JSONObject;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    .line 26
    iput p1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    .line 27
    iput-object p2, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private appendUrlParams()Ljava/lang/String;
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "UTF-8"

    const-string v3, "?"

    if-lez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/network/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/network/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method protected final createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget v2, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    if-nez v2, :cond_0

    move-object v0, v1

    .line 63
    :cond_0
    new-instance v1, Lcom/android/camera/network/net/json/JsonObjectRequest;

    iget v2, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/camera/network/net/json/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {v1, p1}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setParams(Ljava/util/Map;)V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {v1, p1}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setHeaders(Ljava/util/Map;)V

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setCacheKey(Ljava/lang/String;)V

    return-object v1
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
