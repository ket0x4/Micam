.class public Lmiui/reflect/Method;
.super Ljava/lang/Object;
.source "Method.java"


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static varargs of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    .line 54
    new-instance p0, Lmiui/reflect/Method;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/NoSuchMethodException;
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {p2}, Lmiui/reflect/ReflectTool;->parseTypesFromSignature(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p2

    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    new-instance p1, Lmiui/reflect/Method;

    invoke-direct {p1, p0}, Lmiui/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Lmiui/reflect/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 37
    new-instance p1, Lmiui/reflect/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lmiui/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 126
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    iget-object p0, p0, Lmiui/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 131
    new-instance p1, Lmiui/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 129
    new-instance p1, Lmiui/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 183
    :cond_0
    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_1
    return p1
.end method

.method public varargs invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 375
    :cond_0
    instance-of p2, p0, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    return p1
.end method

.method public varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 576
    iget-object p1, p0, Lmiui/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 580
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 581
    iget-object p0, p0, Lmiui/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 585
    new-instance p1, Lmiui/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 583
    new-instance p1, Lmiui/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
