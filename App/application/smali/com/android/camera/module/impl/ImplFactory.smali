.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field private additionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private baseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Z[I)V
    .locals 5

    .line 41
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    aget v2, p3, v1

    const/4 v3, 0x0

    const/16 v4, 0xa4

    if-eq v2, v4, :cond_4

    const/16 v4, 0xab

    if-eq v2, v4, :cond_3

    const/16 v4, 0xc6

    if-eq v2, v4, :cond_2

    const/16 v4, 0xad

    if-eq v2, v4, :cond_1

    const/16 v4, 0xae

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v3

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v3

    goto :goto_1

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v3

    goto :goto_1

    .line 49
    :cond_3
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v3

    goto :goto_1

    .line 45
    :cond_4
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    goto :goto_2

    .line 68
    :cond_5
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    if-eqz p2, :cond_7

    .line 71
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez v2, :cond_6

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    .line 74
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez v2, :cond_8

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    .line 79
    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public detachAdditional()V
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    .line 90
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public detachAll()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    .line 97
    iget-object p0, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    .line 102
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs initAdditional(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    return-void
.end method

.method public varargs initBase(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    return-void
.end method
