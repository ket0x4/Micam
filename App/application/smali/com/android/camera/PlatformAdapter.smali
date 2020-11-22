.class public final enum Lcom/android/camera/PlatformAdapter;
.super Ljava/lang/Enum;
.source "PlatformAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PlatformAdapter$Impl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/PlatformAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/PlatformAdapter;

.field static IMPLS:[Ljava/lang/String;

.field public static final enum INSTANCE:Lcom/android/camera/PlatformAdapter;


# instance fields
.field private mRegisteredImpls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/PlatformAdapter$Impl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/android/camera/PlatformAdapter;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/PlatformAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PlatformAdapter;->INSTANCE:Lcom/android/camera/PlatformAdapter;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/PlatformAdapter;

    .line 12
    sget-object v2, Lcom/android/camera/PlatformAdapter;->INSTANCE:Lcom/android/camera/PlatformAdapter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PlatformAdapter;->$VALUES:[Lcom/android/camera/PlatformAdapter;

    const-string v0, "com.android.camera.MTKPlatformAdapterImpl"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/PlatformAdapter;->IMPLS:[Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/android/camera/PlatformAdapter;->getInstance()Lcom/android/camera/PlatformAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PlatformAdapter;->registerImpls()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/PlatformAdapter;->mRegisteredImpls:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/camera/PlatformAdapter;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/camera/PlatformAdapter;->INSTANCE:Lcom/android/camera/PlatformAdapter;

    return-object v0
.end method

.method private registerImpl(Ljava/lang/String;)V
    .locals 4

    const-string v0, "unknown class"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImpl class name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformAdapter"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 100
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    :try_start_1
    const-class v3, Lcom/android/camera/PlatformAdapter$Impl;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "class type is not match"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_2
    const-string v3, "()V"

    .line 73
    invoke-static {v1, v3}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "no constructor found"
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    invoke-virtual {v1, v3}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PlatformAdapter$Impl;

    if-nez v1, :cond_3

    const-string p0, "create implement instance failed"
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_3
    :try_start_4
    invoke-interface {v1}, Lcom/android/camera/PlatformAdapter$Impl;->isPlatformMatch()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    iget-object p0, p0, Lcom/android/camera/PlatformAdapter;->mRegisteredImpls:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not match"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "unknow exception"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 100
    :goto_1
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/PlatformAdapter;
    .locals 1

    .line 12
    const-class v0, Lcom/android/camera/PlatformAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/PlatformAdapter;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/PlatformAdapter;
    .locals 1

    .line 12
    sget-object v0, Lcom/android/camera/PlatformAdapter;->$VALUES:[Lcom/android/camera/PlatformAdapter;

    invoke-virtual {v0}, [Lcom/android/camera/PlatformAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/PlatformAdapter;

    return-object v0
.end method


# virtual methods
.method public boostCPU(I)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/camera/PlatformAdapter;->mRegisteredImpls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PlatformAdapter$Impl;

    .line 110
    invoke-interface {v0, p1}, Lcom/android/camera/PlatformAdapter$Impl;->boostCPU(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public registerImpls()V
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerImpls count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/PlatformAdapter;->IMPLS:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformAdapter"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/android/camera/PlatformAdapter;->IMPLS:[Ljava/lang/String;

    array-length v2, v0

    if-lez v2, :cond_1

    .line 42
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/camera/PlatformAdapter;->registerImpl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "error when register"

    .line 50
    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
